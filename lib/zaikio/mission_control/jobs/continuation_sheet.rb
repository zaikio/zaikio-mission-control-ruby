module Zaikio
  module MissionControl
    module Jobs
      class ContinuationSheet < Base
        @parts = { continuation_sheet: { required: true, multiple: false } }
      end
    end
  end
end
