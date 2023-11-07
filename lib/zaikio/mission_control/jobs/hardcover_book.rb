module Zaikio
  module MissionControl
    module Jobs
      class HardcoverBook < Base
        @parts = {
          case: { required: true, multiple: false },
          content: { required: true, multiple: true },
          endpaper: { required: true, multiple: true },
          jacket: { required: false, multiple: false }
        }
      end
    end
  end
end
