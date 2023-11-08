module Zaikio
  module MissionControl
    module Jobs
      class Envelope < Base
        @parts = { envelope: { required: true, multiple: false } }
      end
    end
  end
end
