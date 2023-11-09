module Zaikio
  module MissionControl
    module Worksteps
      class Folding < Base
        @intermediate_products = {
          fold: { required: true }
        }
      end
    end
  end
end
