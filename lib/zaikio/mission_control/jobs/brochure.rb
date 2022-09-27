module Zaikio
  module MissionControl
    module Jobs
      class Brochure < Base
        has_many_parts :contents, required: true
        has_one_part :cover, required: true
        has_many_parts :inserts
        has_many_parts :outserts
      end
    end
  end
end
