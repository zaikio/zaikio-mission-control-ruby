module Zaikio
  module MissionControl
    module Parts
      class Insert < Base
        @worksteps = {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: false },
          folding: { required: false }
        }
      end
    end
  end
end
