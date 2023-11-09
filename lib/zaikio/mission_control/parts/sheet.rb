module Zaikio
  module MissionControl
    module Parts
      class Sheet < Base
        @worksteps = {
          ctp: { required: false },
          printing: { required: false },
          cutting: { required: false },
          folding: { required: false }
        }
      end
    end
  end
end
