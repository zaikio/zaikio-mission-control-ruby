# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class SoftcoverBook < Base
        has_one_part :content, required: true
        has_one_part :cover, required: true
      end
    end
  end
end
