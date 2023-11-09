module Zaikio
  module MissionControl
    module Parts
      class Content < Base
        @worksteps = {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: true },
          folding: { required: true }
        }

        @finishings = {
          thread_sewing: { required: false },
          lamination: { required: false }
        }
      end
    end
  end
end
