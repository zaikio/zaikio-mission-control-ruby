# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class Poster < Base
        has_one_part :poster, required: true
      end
    end
  end
end
