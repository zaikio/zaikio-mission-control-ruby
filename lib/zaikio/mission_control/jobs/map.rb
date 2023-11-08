module Zaikio
  module MissionControl
    module Jobs
      class Map < Base
        @parts = {
          cover: { required: false, multiple: false },
          map_sheet: { required: true, multiple: false }
        }
      end
    end
  end
end
