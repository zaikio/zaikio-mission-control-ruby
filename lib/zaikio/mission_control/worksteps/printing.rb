module Zaikio
  module MissionControl
    module Worksteps
      class Printing < Base
        has_one_intermediate_product :sheet, required: false
        has_one_intermediate_product :roll, required: false
      end
    end
  end
end
