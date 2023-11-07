module Zaikio
  module MissionControl
    module Jobs
      class CartonTwoPiece < Base
        @parts = {
          base: { required: true, multiple: false },
          lid: { required: true, multiple: false }
        }
      end
    end
  end
end
