module Zaikio
  module MissionControl
    module Jobs
      class Magazine < Base
        @parts = {
          content: { required: true, multiple: true },
          cover: { required: true, multiple: false },
          insert: { required: false, multiple: false },
          outsert: { required: false, multiple: false }
        }
      end
    end
  end
end
