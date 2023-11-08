module Zaikio
  module MissionControl
    module Jobs
      class Brochure < Base
        @parts = {
          content: { required: true, multiple: true },
          cover: { required: false, multiple: false },
          insert: { required: false, multiple: false },
          outsert: { required: false, multiple: false }
        }
      end
    end
  end
end
