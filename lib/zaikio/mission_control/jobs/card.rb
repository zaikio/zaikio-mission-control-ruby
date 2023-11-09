module Zaikio
  module MissionControl
    module Jobs
      class Card < Base
        @parts = { card: { required: true, multiple: true } }
      end
    end
  end
end
