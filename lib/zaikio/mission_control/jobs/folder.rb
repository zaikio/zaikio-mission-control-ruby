module Zaikio
  module MissionControl
    module Jobs
      class Folder < Base
        has_many_parts :folders, required: true
      end
    end
  end
end
