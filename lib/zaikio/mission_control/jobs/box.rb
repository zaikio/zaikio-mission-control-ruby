module Zaikio
  module MissionControl
    module Jobs
      class Box < Base
        has_one_part :base, required: true
        has_one_part :lid, required: true
      end
    end
  end
end
