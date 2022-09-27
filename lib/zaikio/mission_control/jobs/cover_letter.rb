module Zaikio
  module MissionControl
    module Jobs
      class CoverLetter < Base
        has_one_part :cover_letter, required: true
      end
    end
  end
end
