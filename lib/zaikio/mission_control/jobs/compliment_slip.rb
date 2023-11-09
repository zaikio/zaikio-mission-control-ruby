module Zaikio
  module MissionControl
    module Jobs
      class ComplimentSlip < Base
        @parts = {
          compliment_slip: { required: true, multiple: false }
        }
      end
    end
  end
end
