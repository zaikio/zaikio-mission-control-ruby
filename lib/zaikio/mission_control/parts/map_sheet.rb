module Zaikio
  module MissionControl
    module Parts
      class MapSheet < Base
        has_one_workstep :ctp, required: false
        has_one_workstep :printing, required: true
        has_one_workstep :cutting, required: true
        has_one_workstep :folding, required: true
      end
    end
  end
end
