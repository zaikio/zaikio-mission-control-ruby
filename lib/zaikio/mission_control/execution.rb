module Zaikio
  module MissionControl
    class Execution < Base
      attributes :id, :operator_id, :machine_id, :workstep_id, :quantity, :waste, :started_at, :ended_at, :phase,
                 :created_at, :updated_at
    end
  end
end
