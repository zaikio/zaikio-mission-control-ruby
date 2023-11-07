module Zaikio
  module MissionControl
    module Parts
      class Insert < Base
        has_one_workstep :ctp, required: false
        has_one_workstep :printing, required: true
        has_one_workstep :cutting, required: false
        has_one_workstep :folding, required: false
      end
    end
  end
end
