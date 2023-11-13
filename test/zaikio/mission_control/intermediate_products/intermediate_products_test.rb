require_relative "../../../test_helper"

class Zaikio::MissionControl::IntermediateProductsTest < ActiveSupport::TestCase
  test "All IP exists" do
    expected = %i[
      BookBlock
      Fold
      LaminatedSheet
      Plate
      Product
      Sheet
    ]

    assert_equal expected.to_set,
                  Zaikio::MissionControl::IntermediateProducts.constants.reject { _1 == :Base }.to_set
  end
end
