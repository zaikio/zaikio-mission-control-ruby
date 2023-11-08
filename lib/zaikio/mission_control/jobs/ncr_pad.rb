module Zaikio
  module MissionControl
    module Jobs
      class NcrPad < Base
        @parts = {
          content: { required: true, multiple: true },
          back: { required: true, multiple: false },
          cover: { required: false, multiple: false }
        }
      end
    end
  end
end
