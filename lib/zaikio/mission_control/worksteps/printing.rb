module Zaikio
  module MissionControl
    module Worksteps
      class Printing < Base
        @intermediate_products = {
          sheet: { required: false },
          roll: { required: false }
        }
      end
    end
  end
end
