module Zaikio
  module MissionControl
    module Jobs
      class FoldingCard < Base
        @parts = { folding_card: { required: true, multiple: true } }
      end
    end
  end
end
