module Zaikio
  module MissionControl
    module Parts
      class Jacket < Base
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
