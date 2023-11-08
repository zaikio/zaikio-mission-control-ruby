module Zaikio
  module MissionControl
    module Jobs
      class LetterHead < Base
        @parts = { letter_head: { required: true, multiple: false } }
      end
    end
  end
end
