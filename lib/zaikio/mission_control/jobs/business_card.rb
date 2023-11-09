module Zaikio
  module MissionControl
    module Jobs
      class BusinessCard < Base
        @parts = { business_card: { required: true, multiple: true } }
      end
    end
  end
end
