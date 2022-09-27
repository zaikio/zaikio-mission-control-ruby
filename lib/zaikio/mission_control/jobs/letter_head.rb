module Zaikio
  module MissionControl
    module Jobs
      class LetterHead < Base
        has_one_part :letter_head, required: true
      end
    end
  end
end
