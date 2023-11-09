module Zaikio
  module MissionControl
    module Worksteps
      class Cutting < Base
        @intermediate_products = {
          product: { required: true }
        }
      end
    end
  end
end
