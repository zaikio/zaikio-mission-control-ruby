module Zaikio
  module MissionControl
    module Parts
      class MapSheet < Base
        @worksteps = {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: true },
          folding: { required: true }
        }
      end
    end
  end
end
