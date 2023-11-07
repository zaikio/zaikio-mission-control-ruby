module Zaikio
  module MissionControl
    class Workstep < Base
      uri "worksteps(/:id)"

      attributes :kind, :state, :progress, :expected_costs_for_work, :actual_costs_for_work,
                 :expected_costs_for_materials, :actual_costs_for_materials, :expected_total_costs,
                 :actual_total_costs, :expected_duration_for_preparation, :actual_duration_for_preparation,
                 :expected_duration_for_execution, :actual_duration_for_execution, :expected_duration_for_cleanup,
                 :actual_duration_for_cleanup, :actual_duration_for_exception, :expected_total_duration,
                 :actual_total_duration, :started_at, :completed_at, :canceled_at, :material_demands_ready_at,
                 :unfulfillable_material_demands_reported_at, :created_at, :updated_at, :network_role, :outsourced

      # Associations
      has_many :executions, class_name: "Zaikio::MissionControl::Execution", uri: "worksteps/:workstep_id/executions"
    end
  end
end
