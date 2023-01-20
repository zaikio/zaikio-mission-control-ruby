# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class Label < Base
        has_one_part :label, required: true
      end
    end
  end
end
