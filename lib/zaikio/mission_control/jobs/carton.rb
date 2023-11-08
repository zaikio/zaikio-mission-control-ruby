module Zaikio
  module MissionControl
    module Jobs
      class Carton < Base
        @parts = { carton: { required: true, multiple: false } }
      end
    end
  end
end
