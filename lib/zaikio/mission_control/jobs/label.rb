module Zaikio
  module MissionControl
    module Jobs
      class Label < Base
        @parts = { label: { required: true, multiple: false } }
      end
    end
  end
end
