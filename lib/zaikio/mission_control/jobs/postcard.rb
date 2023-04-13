# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class Postcard < Base
        has_one_part :postcard, required: true
      end
    end
  end
end
