module Zaikio
  module MissionControl
    module Jobs
      class Newspaper < Base
        @parts = {
          content: { required: true, multiple: true },
          insert: { required: false, multiple: true }
        }
      end
    end
  end
end
