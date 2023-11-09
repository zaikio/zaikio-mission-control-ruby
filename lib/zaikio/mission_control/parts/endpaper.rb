module Zaikio
  module MissionControl
    module Parts
      class Endpaper < Base
        @worksteps = {
          ctp: { required: false },
          printing: { required: false },
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
