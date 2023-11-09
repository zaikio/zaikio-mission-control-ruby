module Zaikio
  module MissionControl
    module Jobs
      class Poster < Base
        @parts = { poster: { required: true, multiple: false } }
      end
    end
  end
end
