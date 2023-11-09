module Zaikio
  module MissionControl
    module Worksteps
      class Ctp < Base
        @intermediate_products = {
          plate: { required: true }
        }
      end
    end
  end
end
