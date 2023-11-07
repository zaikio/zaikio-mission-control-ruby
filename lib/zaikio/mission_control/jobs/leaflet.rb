module Zaikio
  module MissionControl
    module Jobs
      class Leaflet < Base
        @parts = { leaflet: { required: true, multiple: false } }
      end
    end
  end
end
