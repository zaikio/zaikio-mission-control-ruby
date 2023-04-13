# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class HardcoverBook < Base
        has_many_parts :contents, required: true
        has_one_part :case, required: true
        has_many_parts :endpapers, required: true
        has_one_part :jacket
      end
    end
  end
end
