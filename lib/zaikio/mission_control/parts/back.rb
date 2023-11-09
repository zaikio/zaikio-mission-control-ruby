module Zaikio
  module MissionControl
    module Parts
      class Back < Base
        @worksteps = {
          ctp: { required: false },
          printing: { required: false },
          cutting: { required: true },
          folding: { required: false }
        }
      end
    end
  end
end
