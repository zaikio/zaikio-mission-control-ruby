module Zaikio
  module MissionControl
    module Parts
      class Poster < Base
        has_one_workstep :ctp, required: false
        has_one_workstep :printing, required: false
        has_one_workstep :cutting, required: false
      end
    end
  end
end
