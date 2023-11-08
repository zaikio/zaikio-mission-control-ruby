module Zaikio
  module MissionControl
    module Jobs
      class Booklet < Base
        @parts = {
          cover: { required: true, multiple: false },
          content: { required: true, multiple: true },
          insert: { required: false, multiple: true },
          outsert: { required: false, multiple: true }
        }
      end
    end
  end
end
