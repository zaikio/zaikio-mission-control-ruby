module Zaikio
  module MissionControl
    module Worksteps
      class Cutting < Base
        has_one_intermediate_product :product, required: true
      end
    end
  end
end
