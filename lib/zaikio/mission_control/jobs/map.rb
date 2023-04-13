# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class Map < Base
        has_one_part :map_sheet, required: true
        has_one_part :cover
      end
    end
  end
end
