require_relative "../../../test_helper"

class Zaikio::MissionControl::PartsTest < ActiveSupport::TestCase
  test "all parts are present" do
    expected = {
      Back: {
        worksteps: {
          ctp: { required: false },
          printing: { required: false },
          cutting: { required: true },
          folding: { required: false }
        }
      },
      BusinessCard: {
        worksteps: {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: true },
          folding: { required: false }
        },
        finishings: {
          lamination: { required: false }
        }
      },
      Card: {},
      Carton: {},
      Case: {
        worksteps: {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: false },
          folding: { required: false }
        },
        finishings: {
          lamination: { required: false }
        }
      },
      ComplimentSlip: {},
      Content: {
        worksteps: {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: true },
          folding: { required: true }
        },
        finishings: {
          thread_sewing: { required: false },
          lamination: { required: false }
        }
      },
      ContinuationSheet: {},
      Cover: {
        worksteps: {
          ctp: { required: false },
          printing: { required: false },
          cutting: { required: false },
          folding: { required: false }
        },
        finishings: {
          lamination: { required: false }
        }
      },
      CoverLetter: {},
      Endpaper: {
        worksteps: {
          ctp: { required: false },
          printing: { required: false },
          cutting: { required: false },
          folding: { required: false }
        },
        finishings: {
          lamination: { required: false }
        }
      },
      Envelope: {},
      Flyer: {
        worksteps: {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: true }
        }
      },
      Folder: {},
      FoldingCard: {},
      Insert: {
        worksteps: {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: false },
          folding: { required: false }
        }
      },
      Jacket: {
        worksteps: {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: false },
          folding: { required: false }
        },
        finishings: {
          lamination: { required: false }
        }
      },
      Label: {
        worksteps: {
          ctp: { required: false },
          printing: { required: false },
          cutting: { required: false }
        }
      },
      Leaflet: {
        worksteps: {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: true },
          folding: { required: true }
        }
      },
      LetterHead: {},
      Lid: {},
      MapSheet: {
        worksteps: {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: true },
          folding: { required: true }
        }
      },
      Outsert: {
        worksteps: {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: false },
          folding: { required: false }
        }
      },
      Postcard: {
        worksteps: {
          ctp: { required: false },
          printing: { required: false },
          cutting: { required: false }
        }
      },
      Poster: {
        worksteps: {
          ctp: { required: false },
          printing: { required: false },
          cutting: { required: false }
        }
      },
      SelfMailer: {
        worksteps: {
          ctp: { required: false },
          printing: { required: false },
          cutting: { required: false },
          folding: { required: false }
        }
      },
      Sheet: {}
    }

    Zaikio::MissionControl::Parts.constants.reject { _1 == :Base }.each do |part_klass|
      assert expected.fetch(part_klass) { false }, "Parts not found #{part_klass}"
      assert_equal expected[part_klass][:worksteps],
        Zaikio::MissionControl::Parts.const_get(part_klass).instance_variable_get(:@worksteps),
        "Expected #{part_klass} to include workstep #{expected[part_klass][:worksteps]}"
      assert_equal expected[part_klass][:finishings],
        Zaikio::MissionControl::Parts.const_get(part_klass).instance_variable_get(:@finishings)
    end
  end
end
