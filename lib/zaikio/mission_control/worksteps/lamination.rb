module Zaikio
  module MissionControl
    module Worksteps
      class Lamination < Base
        has_one_intermediate_product :laminated_sheet, required: true
      end
    end
  end
end
