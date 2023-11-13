require_relative "../../../test_helper"

class Zaikio::MissionControl::WorkstepsTest < ActiveSupport::TestCase
  test "@parts, return what it should" do
    expected = {
      Ctp: {
        plate: { required: true }
      },
      Cutting: {
        product: { required: true }
      },
      Folding: {
        fold: { required: true }
      },
      Lamination: {
        laminated_sheet: { required: true }
      },
      Printing: {
        sheet: { required: false },
        roll: { required: false }
      },
      ThreadSewing: {
        book_block: { required: true }
      }
    }

    Zaikio::MissionControl::Worksteps.constants.reject { _1 == Base } .each do |job_klass|
      assert_equal expected[job_klass],
                   Zaikio::MissionControl::Worksteps.const_get(job_klass).instance_variable_get(:@intermediate_products)
    end
  end
end
