require_relative "../../../test_helper"

class Zaikio::MissionControl::JobsTest < ActiveSupport::TestCase
  test "@parts, return what it should" do
    expected = {
      "Booklet" => {
        cover: { required: true, multiple: false },
        content: { required: true, multiple: true },
        insert: { required: false, multiple: true },
        outsert: { required: false, multiple: true }
      },
      "Box" => {
        base: { required: true, multiple: false },
        lid: { required: true, multiple: false }
      },
      "Brochure" => {
        content: { required: true, multiple: true },
        cover: { required: false, multiple: false },
        insert: { required: false, multiple: false },
        outsert: { required: false, multiple: false }
      },
      "BusinessCard" => {
        business_card: { required: true, multiple: true }
      },
      "Carton" => {
        carton: { required: true, multiple: false }
      },
      "CartonTwoPiece" => {
        base: { required: true, multiple: false },
        lid: { required: true, multiple: false }
      },
      "ComplimentSlip" => {
        compliment_slip: { required: true, multiple: false }
      },
      "ContinuationSheet" => {
        continuation_sheet: { required: true, multiple: false }
      },
      "CoverLetter" => {
        cover_letter: { required: true, multiple: false }
      },
      "Envelope" => {
        envelope: { required: true, multiple: false }
      },
      "Flyer" => {
        flyer: { required: true, multiple: false }
      },
      "Folder" => {
        folder: { required: true, multiple: true }
      },
      "FoldingCard" => {
        folding_card: { required: true, multiple: true }
      },
      "HardcoverBook" => { content: { required: true, multiples: true },
                           case: { required: true, multiples: false }, endpaper: { required: true, multiples: true }, jacket: { required: false, multiples: false } },
      "Label" => {
        label: { required: true, multiple: false }
      },
      "Leaflet" => {
        leaflet: { required: true, multiple: false }
      },
      "LetterHead" => {
        letter_head: { required: true, multiple: false }
      },
      "Magazine" => {
        content: { required: true, multiple: true },
        cover: { required: true, multiple: false },
        insert: { required: false, multiple: false },
        outsert: { required: false, multiple: false }
      },
      "Map" => {
        cover: { required: false, multiple: false },
        map_sheet: { required: true, multiple: false }
      },
      "NcrPad" => {
        nt: { required: true, multiple: true },
        back: { required: true, multiple: false },
        cover: { required: false, multiple: false }
      },
      "Newspaper" => {
        content: { required: true, multiple: true },
        insert: { required: false, multiple: true }
      },
      "Notebook" => {
        tent: { required: true, multiple: true },
        cover: { required: true, multiple: false },
        back: { required: false, multiple: false }
      },
      "Postcard" => {
        postcard: { required: true, multiple: false }
      },
      "Poster" => {
        er: { required: true, multiple: false }
      },
      "SelfMailer" => {
        self_mailer: { required: true, multiple: false }
      },
      "Sheet" => {
        sheet: { required: true, multiple: false }
      },
      "SoftcoverBook" => {
        content: { required: true, multiple: true },
        cover: { required: true, multiple: false }
      }
    }

    Zaikio::MissionControl::Jobs::Base.parts.each do |job_klass|
      assert_equal expected[job_klass],
                   Zaikio::MissionControl::Jobs.const_get(job_klass).instance_variable_get(:@parts)
    end
  end

  test ".parts, return what it should" do
    expected = %i[content case endpaper jacket]

    assert_equal expected,
                 Zaikio::MissionControl::Jobs::HardcoverBook.parts
  end

  test ".part_config, return what it should" do
    expected = { required: true, multiples: true }
    assert_equal expected,
                 Zaikio::MissionControl::Jobs::HardcoverBook.part_config(:content)
  end

  test ".part_klasses, return what it should" do
    expected = [Zaikio::MissionControl::Parts::Content, Zaikio::MissionControl::Parts::Case,
                Zaikio::MissionControl::Parts::Endpaper, Zaikio::MissionControl::Parts::Jacket]

    assert_equal expected,
                 Zaikio::MissionControl::Jobs::HardcoverBook.part_klasses
  end

  test ".multiples?, with has one, return false" do
    assert_not Zaikio::MissionControl::Jobs::HardcoverBook.multiples?(:case)
  end

  test ".multiples?, with has many, return false" do
    assert Zaikio::MissionControl::Jobs::HardcoverBook.multiples?(:content)
  end

  test ".required?, when required false, return false" do
    assert Zaikio::MissionControl::Jobs::HardcoverBook.required?(:case)
  end

  test ".required?, when required true, return false" do
    assert_not Zaikio::MissionControl::Jobs::HardcoverBook.required?(:jacket)
  end
end
