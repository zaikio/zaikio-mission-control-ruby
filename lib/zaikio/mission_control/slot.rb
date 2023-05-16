module Zaikio
  module MissionControl
    class Slot < Base
      attributes :started_at, :ended_at, :outdated, :workstep_id, :machine_id, :created_at, :updated_at,
                 :production_frame_id, :updated_slot_id, :outdated_slot_id, :slot_candidate_id
    end
  end
end
