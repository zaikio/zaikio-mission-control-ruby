# frozen_string_literal: true

require "test_helper"

class Zaikio::MissionControlTest < ActiveSupport::TestCase
  test "is a module" do
    assert_kind_of Module, Zaikio::MissionControl
  end

  test "has version number" do
    assert_not_nil ::Zaikio::MissionControl::VERSION
  end

  test "it is configurable" do
    Zaikio::MissionControl.configure do |config|
      config.environment = :test
    end

    assert_equal :test, Zaikio::MissionControl.configuration.environment
  end

  test "lists all jobs" do
    assert_equal(
      [
        Zaikio::MissionControl::Jobs::Booklet,
        Zaikio::MissionControl::Jobs::Box,
        Zaikio::MissionControl::Jobs::Brochure,
        Zaikio::MissionControl::Jobs::BusinessCard,
        Zaikio::MissionControl::Jobs::Carton,
        Zaikio::MissionControl::Jobs::CartonTwoPiece,
        Zaikio::MissionControl::Jobs::ComplimentSlip,
        Zaikio::MissionControl::Jobs::ContinuationSheet,
        Zaikio::MissionControl::Jobs::CoverLetter,
        Zaikio::MissionControl::Jobs::Envelope,
        Zaikio::MissionControl::Jobs::Flyer,
        Zaikio::MissionControl::Jobs::HardcoverBook,
        Zaikio::MissionControl::Jobs::Label,
        Zaikio::MissionControl::Jobs::Leaflet,
        Zaikio::MissionControl::Jobs::LetterHead,
        Zaikio::MissionControl::Jobs::Magazine,
        Zaikio::MissionControl::Jobs::Map,
        Zaikio::MissionControl::Jobs::NcrPad,
        Zaikio::MissionControl::Jobs::Newspaper,
        Zaikio::MissionControl::Jobs::Notebook,
        Zaikio::MissionControl::Jobs::Postcard,
        Zaikio::MissionControl::Jobs::Poster,
        Zaikio::MissionControl::Jobs::SelfMailer,
        Zaikio::MissionControl::Jobs::Sheet,
        Zaikio::MissionControl::Jobs::SoftcoverBook
      ],
      Zaikio::MissionControl.job_klasses
    )

    assert_equal(
      %i[
        booklet box brochure business_card carton carton_two_piece
        compliment_slip continuation_sheet cover_letter envelope
        flyer hardcover_book label leaflet letter_head magazine
        map ncr_pad newspaper notebook postcard poster
        self_mailer sheet softcover_book
      ],
      Zaikio::MissionControl.jobs
    )
  end

  test "lists all parts" do
    assert_equal(
      [
        Zaikio::MissionControl::Parts::Back,
        Zaikio::MissionControl::Parts::Base,
        Zaikio::MissionControl::Parts::BusinessCard,
        Zaikio::MissionControl::Parts::Carton,
        Zaikio::MissionControl::Parts::Case,
        Zaikio::MissionControl::Parts::ComplimentSlip,
        Zaikio::MissionControl::Parts::Content,
        Zaikio::MissionControl::Parts::ContinuationSheet,
        Zaikio::MissionControl::Parts::Cover,
        Zaikio::MissionControl::Parts::CoverLetter,
        Zaikio::MissionControl::Parts::Endpaper,
        Zaikio::MissionControl::Parts::Envelope,
        Zaikio::MissionControl::Parts::Flyer,
        Zaikio::MissionControl::Parts::Insert,
        Zaikio::MissionControl::Parts::Jacket,
        Zaikio::MissionControl::Parts::Label,
        Zaikio::MissionControl::Parts::Leaflet,
        Zaikio::MissionControl::Parts::LetterHead,
        Zaikio::MissionControl::Parts::Lid,
        Zaikio::MissionControl::Parts::MapSheet,
        Zaikio::MissionControl::Parts::Outsert,
        Zaikio::MissionControl::Parts::Postcard,
        Zaikio::MissionControl::Parts::Poster,
        Zaikio::MissionControl::Parts::SelfMailer,
        Zaikio::MissionControl::Parts::Sheet
      ],
      Zaikio::MissionControl.part_klasses
    )

    assert_equal(
      %i[
        back base business_card carton case compliment_slip
        content continuation_sheet cover cover_letter endpaper
        envelope flyer insert jacket label leaflet letter_head
        lid map_sheet outsert postcard poster self_mailer sheet
      ],
      Zaikio::MissionControl.parts
    )
  end

  test "lists all finishings" do
    assert_equal(
      [
        Zaikio::MissionControl::Finishings::CombBinding,
        Zaikio::MissionControl::Finishings::Embossing,
        Zaikio::MissionControl::Finishings::FoilStamp,
        Zaikio::MissionControl::Finishings::Glue,
        Zaikio::MissionControl::Finishings::HeadBand,
        Zaikio::MissionControl::Finishings::Hole,
        Zaikio::MissionControl::Finishings::Lamination,
        Zaikio::MissionControl::Finishings::PerfectBinding,
        Zaikio::MissionControl::Finishings::Perforation,
        Zaikio::MissionControl::Finishings::RingBinding,
        Zaikio::MissionControl::Finishings::SaddleStitch,
        Zaikio::MissionControl::Finishings::SpiralBinding,
        Zaikio::MissionControl::Finishings::StripBinding,
        Zaikio::MissionControl::Finishings::ThreadSewing
      ],
      Zaikio::MissionControl.finishing_klasses
    )

    assert_equal(
      %i[
        comb_binding embossing foil_stamp glue head_band hole
        lamination perfect_binding perforation ring_binding
        saddle_stitch spiral_binding strip_binding thread_sewing
      ],
      Zaikio::MissionControl.finishings
    )
  end

  test "returns jobs and parts config" do
    assert_equal(
      %i[
        content
        cover
        insert
        outsert
      ],
      Zaikio::MissionControl::Jobs::Booklet.parts
    )
    assert Zaikio::MissionControl::Jobs::Booklet.multiples?(:content)
    assert Zaikio::MissionControl::Jobs::Booklet.required?(:content)
    assert Zaikio::MissionControl::Jobs::Booklet.required?(:contents)
    assert Zaikio::MissionControl::Jobs::Booklet.multiples?(Zaikio::MissionControl::Parts::Content)
    assert Zaikio::MissionControl::Jobs::Booklet.required?(Zaikio::MissionControl::Parts::Content)
    assert_equal(
      [
        Zaikio::MissionControl::Parts::Content,
        Zaikio::MissionControl::Parts::Cover,
        Zaikio::MissionControl::Parts::Insert,
        Zaikio::MissionControl::Parts::Outsert
      ],
      Zaikio::MissionControl::Jobs::Booklet.part_klasses
    )
  end

  test "translates model names" do
    I18n.default_locale = :en
    I18n.config.available_locales = %i[en de]
    I18n.with_locale(:de) do
      assert_equal "Heft", Zaikio::MissionControl::Jobs::Booklet.model_name.human
    end
  end
end
