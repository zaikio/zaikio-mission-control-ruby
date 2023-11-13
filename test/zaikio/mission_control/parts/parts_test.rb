require_relative "../../../test_helper"

class Zaikio::MissionControl::PartsTest < ActiveSupport::TestCase
  test "all parts are present" do
    expected = %i[
      Back
      BusinessCard
      Card
      Carton
      Case
      ComplimentSlip
      Content
      ContinuationSheet
      Cover
      CoverLetter
      Endpaper
      Envelope
      Flyer
      Folder
      FoldingCard
      Insert
      Jacket
      Label
      Leaflet
      LetterHead
      Lid
      MapSheet
      Outsert
      Postcard
      Poster
      SelfMailer
      Sheet
    ].to_set

    assert_equal expected, Zaikio::MissionControl::Parts.constants.reject { _1 == :Base }.to_set
  end
end
