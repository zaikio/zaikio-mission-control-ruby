module Zaikio
  module MissionControl
    module Jobs
      class CoverLetter < Base
        @parts = { cover_letter: { required: true, multiple: false } }
      end
    end
  end
end
