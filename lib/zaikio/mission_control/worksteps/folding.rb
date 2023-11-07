module Zaikio
  module MissionControl
    module Worksteps
      class Folding < Base
        has_one_intermediate_product :fold, required: true
      end
    end
  end
end
