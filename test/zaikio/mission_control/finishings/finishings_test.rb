require_relative "../../../test_helper"

class Zaikio::MissionControl::FinishingsTest < ActiveSupport::TestCase
  test "all fininshing are present" do
    expected = %i[
      CombBinding
      Embossing
      Engraving
      FoilStamp
      Glue
      HeadBand
      Hole
      Lamination
      PerfectBinding
      Perforation
      RingBinding
      SaddleStitch
      SpiralBinding
      StripBinding
      ThreadSewing
    ].to_set

    assert_equal expected, Zaikio::MissionControl::Finishings.constants.reject { _1 == :Base }.to_set
  end
end
