module Zaikio
  module MissionControl
    module Jobs
      class Postcard < Base
        @parts = { postcard: { required: true, multiple: false } }
      end
    end
  end
end
