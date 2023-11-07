module Zaikio
  module MissionControl
    module Worksteps
      class Ctp < Base
        has_one_intermediate_product :plate, required: true
      end
    end
  end
end
