# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class ContinuationSheet < Base
        has_one_part :continuation_sheet, required: true
      end
    end
  end
end
