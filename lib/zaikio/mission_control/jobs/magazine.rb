module Zaikio
  module MissionControl
    module Jobs
      class Magazine < Base
        has_one_part :content, required: true
        has_one_part :cover
        has_many_parts :inserts
        has_many_parts :outserts
      end
    end
  end
end
