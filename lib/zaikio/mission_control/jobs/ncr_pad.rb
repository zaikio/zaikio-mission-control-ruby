module Zaikio
  module MissionControl
    module Jobs
      class NcrPad < Base
        has_many_parts :content, required: true
        has_one_part :back, required: true
        has_one_part :cover
      end
    end
  end
end
