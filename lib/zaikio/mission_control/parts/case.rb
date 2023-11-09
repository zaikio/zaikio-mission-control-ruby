module Zaikio
  module MissionControl
    module Parts
      class Case < Base
        @worksteps = {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: false },
          folding: { required: false }
        }

        @finishings = {
          lamination: { required: false }
        }
      end
    end
  end
end
