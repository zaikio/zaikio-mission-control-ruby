# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class Leaflet < Base
        has_one_part :leaflet, required: true
      end
    end
  end
end
