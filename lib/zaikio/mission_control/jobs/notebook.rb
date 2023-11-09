module Zaikio
  module MissionControl
    module Jobs
      class Notebook < Base
        @parts = {
          content: { required: true, multiple: true },
          cover: { required: true, multiple: false },
          back: { required: false, multiple: false }
        }
      end
    end
  end
end
