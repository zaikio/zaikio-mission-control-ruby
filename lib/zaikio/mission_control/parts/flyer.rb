module Zaikio
  module MissionControl
    module Parts
      class Flyer < Base
        @worksteps = {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: true }
        }
      end
    end
  end
end
