module Zaikio
  module MissionControl
    module Jobs
      class Flyer < Base
        @parts = { flyer: { required: true, multiple: false } }
      end
    end
  end
end
