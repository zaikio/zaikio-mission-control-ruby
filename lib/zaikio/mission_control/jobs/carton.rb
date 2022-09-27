module Zaikio
  module MissionControl
    module Jobs
      class Carton < Base
        has_one_part :carton, required: true
      end
    end
  end
end
