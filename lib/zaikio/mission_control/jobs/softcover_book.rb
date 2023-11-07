module Zaikio
  module MissionControl
    module Jobs
      class SoftcoverBook < Base
        @parts = {
          content: { required: true, multiple: true },
          cover: { required: true, multiple: false }
        }
      end
    end
  end
end
