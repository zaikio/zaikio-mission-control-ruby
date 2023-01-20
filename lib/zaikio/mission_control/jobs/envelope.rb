# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class Envelope < Base
        has_one_part :envelope, required: true
      end
    end
  end
end
