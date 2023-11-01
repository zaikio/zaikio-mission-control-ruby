module Zaikio
  module MissionControl
    module Jobs
      class FoldingCard < Base
        has_many_parts :folding_cards, required: true
      end
    end
  end
end
