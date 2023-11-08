module Zaikio
  module MissionControl
    class Workstep < Base
      include_root_in_json :workstep

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

      # TODO: change it to return a +Spyke+ +HasMany+ association
      def created_intermediates
        @created_intermediates ||= self["intermediates"]["created"].map do |slot|
          Zaikio::MissionControl::IntermediateProduct.new(slot)
        end
      end

      # TODO: change it to return a +Spyke+ +HasMany+ association
      def consumed_intermediates
        @consumed_intermediates ||= get(:workstep)["intermediates"]["consumed"].map do |slot|
          Zaikio::MissionControl::IntermediateProduct.new(slot)
        end
      end
    end
  end
end
