module Zaikio
  module MissionControl
    module Jobs
      class CartonTwoPiece < Base
        has_one_part :base, required: true
        has_one_part :lid, required: true
      end
    end
  end
end
