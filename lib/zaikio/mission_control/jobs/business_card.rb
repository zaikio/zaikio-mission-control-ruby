module Zaikio
  module MissionControl
    module Jobs
      class BusinessCard < Base
        has_many_parts :business_cards, required: true
      end
    end
  end
end
