module Zaikio
  module MissionControl
    module Jobs
      class Sheet < Base
        @parts = { sheet: { required: true, multiple: false } }
      end
    end
  end
end
