module Zaikio
  module MissionControl
    module Parts
      class BusinessCard < Base
        @worksteps = {
          ctp: { required: false },
          printing: { required: true },
          cutting: { required: true },
          folding: { required: false }
        }

        @finishings = {
          lamination: { required: false }
        }
      end
    end
  end
end
