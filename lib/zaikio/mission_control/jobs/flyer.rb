module Zaikio
  module MissionControl
    module Jobs
      class Flyer < Base
        has_one_part :flyer, required: true
      end
    end
  end
end
