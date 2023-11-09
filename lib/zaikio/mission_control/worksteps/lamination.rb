module Zaikio
  module MissionControl
    module Worksteps
      class Lamination < Base
        @intermediate_products = {
          laminated_sheet: { required: true }
        }
      end
    end
  end
end
