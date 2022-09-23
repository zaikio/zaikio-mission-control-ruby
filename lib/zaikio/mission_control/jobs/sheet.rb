module Zaikio
  module MissionControl
    module Jobs
      class Sheet < Base
        has_one_part :sheet, required: true
      end
    end
  end
end
