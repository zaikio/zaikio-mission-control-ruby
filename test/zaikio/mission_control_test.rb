require "test_helper"

class Zaikio::MissionControlTest < ActiveSupport::TestCase
  def token
    # rubocop:disable Layout/LineLength
    "eyJraWQiOiI0ZmZhNTc5MmQwMTJlMjY0YTEzODk5ZmZkYTA3YmVhYzkwOTA4NjRhNmY4MWU5YjQxMGNkOTFkY2UxOTNlODg3IiwiYWxnIjoiUlMyNTYifQ.eyJpc3MiOiJaQUkiLCJzdWIiOiJPcmdhbml6YXRpb24vOWQ2YmExM2YtN2QzYi00ZjI4LWIzZTMtYmRiMThjOGEyNjY4IiwiYXVkIjpbImtleWxpbmVfY2xhc3NpYyJdLCJqdGkiOiI4ZTBiOTI0MC1mNTdjLTQ4MjMtYTlmMi1lYjZkMzhkZGNiYmQiLCJuYmYiOjE2ODA1OTM5MDMsImV4cCI6MTY4MDU5NzUwMywiamt1IjoiaHR0cHM6Ly9odWIuc2FuZGJveC56YWlraW8uY29tL2FwaS92MS9qd3RfcHVibGljX2tleXMiLCJzY29wZSI6WyJkaXJlY3RvcnkubWFjaGluZXMucnciLCJkaXJlY3Rvcnkub3JnYW5pemF0aW9uLnIiLCJkaXJlY3Rvcnkub3JnYW5pemF0aW9uX21lbWJlcnMucnciLCJkaXJlY3Rvcnkuc2l0ZXMucnciLCJkaXJlY3Rvcnkuc3BlY2lhbGlzdHMucnciLCJtaXNzaW9uX2NvbnRyb2wuY29tbWlzc2lvbmluZ3MucnciLCJtaXNzaW9uX2NvbnRyb2wuZXN0aW1hdGVzLnJ3IiwibWlzc2lvbl9jb250cm9sLmpvYnMucnciLCJtaXNzaW9uX2NvbnRyb2wubGlzdHMucnciLCJtaXNzaW9uX2NvbnRyb2wub3JkZXJzLnJ3IiwicHJvY3VyZW1lbnRfY29uc3VtZXIuYXJ0aWNsZV9iYXNlLnIiLCJwcm9jdXJlbWVudF9jb25zdW1lci5jb250cmFjdHMucnciLCJwcm9jdXJlbWVudF9jb25zdW1lci5tYXRlcmlhbF9yZXF1aXJlbWVudHMucnciLCJwcm9jdXJlbWVudF9jb25zdW1lci5vcmRlcnMucnciLCJ3YXJlaG91c2UuY29uc3VtcHRpb25zX2FuZF9yZXNlcnZhdGlvbnMucnciLCJ3YXJlaG91c2UuZmluaXNoZWRfZ29vZHNfY2FsbF9vZmZzLnIiLCJ3YXJlaG91c2Uuc3RvY2tfbGV2ZWxzLnJ3Iiwid2FyZWhvdXNlLndhcmVob3VzZXMucnciXX0.vyJ1Q8UsYbNTBIalGxYcTao6CdqTjwPvAsdw8P3A84XGJeggeyMjiPbqioOr6AXhwpFjqrcjYw2xms69RTIDT_EYs6_0JzJQMujtuq04hqIPx2oOphMKCgjcoVkSjsnl--lW_qZj-FCVbcXoV9KQmVm7cfQK6pzA6k-1Qf_3ln-mvN32nOE7JPO6fDl_yebUpfvOKlgultLxxDtM8nHhiArpCvp5StZlFUVjUUhb_qI6uX58Z9Wk3j-7WrOdjtvtaN0CrknKV8GPWQNJMlWrF1uqA3t5X-KWRi5NyzeqgRZQ_t5Wcig_uMbrIn5cPt4dUdiaceQdzfzGm9wON00MhA"
    # rubocop:enable Layout/LineLength
  end

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
        Zaikio::MissionControl::Jobs::Card,
        Zaikio::MissionControl::Jobs::Carton,
        Zaikio::MissionControl::Jobs::CartonTwoPiece,
        Zaikio::MissionControl::Jobs::ComplimentSlip,
        Zaikio::MissionControl::Jobs::ContinuationSheet,
        Zaikio::MissionControl::Jobs::CoverLetter,
        Zaikio::MissionControl::Jobs::Envelope,
        Zaikio::MissionControl::Jobs::Flyer,
        Zaikio::MissionControl::Jobs::Folder,
        Zaikio::MissionControl::Jobs::FoldingCard,
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
        booklet box brochure business_card card carton carton_two_piece
        compliment_slip continuation_sheet cover_letter envelope
        flyer folder folding_card hardcover_book label leaflet letter_head magazine
        map ncr_pad newspaper notebook postcard poster
        self_mailer sheet softcover_book
      ],
      Zaikio::MissionControl.jobs
    )
  end

  test "every existing file in jobs, is required in MissionControl" do
    jobs = Dir.entries("lib/zaikio/mission_control/jobs")
    jobs.keep_if { _1.ends_with?(".rb") && _1 != "base.rb" }
    jobs = jobs.map { _1.delete_suffix!(".rb").to_sym }.sort

    assert_equal jobs, Zaikio::MissionControl.jobs
  end

  test "lists all parts" do
    assert_equal(
      [
        Zaikio::MissionControl::Parts::Back,
        Zaikio::MissionControl::Parts::BusinessCard,
        Zaikio::MissionControl::Parts::Card,
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
        Zaikio::MissionControl::Parts::Folder,
        Zaikio::MissionControl::Parts::FoldingCard,
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
        back business_card card carton case compliment_slip
        content continuation_sheet cover cover_letter endpaper
        envelope flyer folder folding_card insert jacket label leaflet letter_head
        lid map_sheet outsert postcard poster self_mailer sheet
      ],
      Zaikio::MissionControl.parts
    )
  end

  test "every existing file in parts, is required in MissionControl" do
    parts = Dir.entries("lib/zaikio/mission_control/parts")
    parts.keep_if { _1.ends_with?(".rb") && _1 != "base.rb" }
    parts = parts.map { _1.delete_suffix!(".rb").to_sym }.sort

    assert_equal parts, Zaikio::MissionControl.parts
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

  test "every existing file in finishing, is required in MissionControl" do
    finishings = Dir.entries("lib/zaikio/mission_control/finishings")
    finishings.keep_if { _1.ends_with?(".rb") && _1 != "base.rb" }
    finishings = finishings.map { _1.delete_suffix!(".rb").to_sym }.sort

    assert_equal finishings, Zaikio::MissionControl.finishings
  end

  test "returns jobs and parts config" do
    assert_equal(
      %i[
        cover
        content
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
        Zaikio::MissionControl::Parts::Cover,
        Zaikio::MissionControl::Parts::Content,
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

  test "fetching jobs" do
    VCR.use_cassette("jobs") do
      Zaikio::MissionControl.with_token(token) do
        jobs = Zaikio::MissionControl::Job.all
        assert jobs.any?
      end
    end
  end

  test "fetching an execution" do
    VCR.use_cassette("execution") do
      Zaikio::MissionControl.with_token(token) do
        execution = Zaikio::MissionControl::Execution.find("b1cc3531-ea11-4f94-b35f-cccaaed4a4c5")
        assert_equal "b1cc3531-ea11-4f94-b35f-cccaaed4a4c5", execution.id
      end
    end
  end

  test "fetch a specific job" do
    VCR.use_cassette("job") do
      Zaikio::MissionControl.with_token(token) do
        job = Zaikio::MissionControl::Job.find("b1cc3531-ea11-4f94-b35f-cccaaed4a4c5")
        assert_equal "b1cc3531-ea11-4f94-b35f-cccaaed4a4c5", job.id
      end
    end
  end

  test "fetch a machine production schedules" do
    VCR.use_cassette("machine_production_schedule") do
      Zaikio::MissionControl.with_token(token) do
        slots = Zaikio::MissionControl::Machine
                .new(id: "b1cc3531-ea11-4f94-b35f-cccaaed4a4c5")
                .production_schedule_slots

        assert_equal 3, slots.count
        assert(slots.all? { |slot| slot.is_a?(Zaikio::MissionControl::Slot) })
      end
    end
  end

  test "fetch an order" do
    VCR.use_cassette("order") do
      Zaikio::MissionControl.with_token(token) do
        order = Zaikio::MissionControl::Order.find("b1cc3531-ea11-4f94-b35f-cccaaed4a4c5")
        assert_equal "b1cc3531-ea11-4f94-b35f-cccaaed4a4c5", order.id

        line_items = order.line_items
        shipping_options = order.shipping_options

        assert_equal 1, shipping_options.count

        # Line Items
        assert_equal 2, line_items.count
        line_items.each do |line_item|
          assert line_item.is_a?(Zaikio::MissionControl::OrderLineItem)
          assert_equal line_item.shipping_option_id, shipping_options.first.id
        end
        assert_not shipping_options.first["address"].empty?

        # Customer
        assert_equal order.customer.name, "Collier-Mitchell"

        # Contacts
        assert_equal order.contacts.count, 2
        assert_equal order.contacts.first.display_name, "Luana Reinger 1"
      end
    end
  end

  test "fetch a workstep" do
    VCR.use_cassette("workstep") do
      Zaikio::MissionControl.with_token(token) do
        workstep = Zaikio::MissionControl::Workstep.find("2d6cc7cb-a7dd-4f99-958e-df49ae3f1ab3")
        assert_equal "cutting", workstep.kind
        assert_equal 1, workstep.executions.count
        assert_equal 425_130, workstep.actual_duration_for_execution
      end
    end
  end

  test "fetch an intermediate product" do
    VCR.use_cassette("intermediate_product") do
      Zaikio::MissionControl.with_token(token) do
        intermediate = Zaikio::MissionControl::IntermediateProduct.find("8119fd65-80ca-4e5c-b4cc-024086290f14")
        assert_equal "sheet", intermediate.kind
        assert_equal 51, intermediate.expected_quantity
      end
    end
  end

  test "fetch a workstep from an execution" do
    VCR.use_cassette("workstep_from_execution") do
      Zaikio::MissionControl.with_token(token) do
        execution = Zaikio::MissionControl::Execution.find("7ff2e44e-2ab0-40ed-bc5f-2714edb8a0e0")
        workstep = execution.workstep
        assert_equal "cutting", workstep.kind
        assert_equal 1, workstep.executions.count
      end
    end
  end

  test "fetch a production frame" do
    VCR.use_cassette("production_frame") do
      Zaikio::MissionControl.with_token(token) do
        production_frame = Zaikio::MissionControl::ProductionFrame.find("254e44c4-067a-455f-8d1f-e75c6b936b2f")
        assert_equal "254e44c4-067a-455f-8d1f-e75c6b936b2f", production_frame.id
        assert_equal 1, production_frame.slots.count
      end
    end
  end
end
