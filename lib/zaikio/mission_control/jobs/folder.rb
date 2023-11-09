module Zaikio
  module MissionControl
    module Jobs
      class Folder < Base
        @parts = { folder: { required: true, multiple: true } }
      end
    end
  end
end
