module Zaikio
  module MissionControl
    module Jobs
      class ComplimentSlip < Base
        has_one_part :compliment_slip, required: true
      end
    end
  end
end
