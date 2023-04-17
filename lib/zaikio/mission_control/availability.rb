module Zaikio
  module MissionControl
    class Availability < Base
      include_root_in_json :availability

      attributes :machine_id, :mode, :starts_at, :ends_at, :date, :weekday, :reason, :capacity,
                 :description, :machine_id, :specialist_id, :created_at, :updated_at, :starts_at_hm,
                 :ends_at_hm

      private

      def attributes=(new_attributes)
        # post and patch have a different response structure
        # https://docs.zaikio.com/api/mission_control/api.html#/Shop%20floor/post_machines__machine_id__availabilities
        if new_attributes.key?("availability")
          super(new_attributes["availability"])
        else
          super(new_attributes)
        end
      end
    end
  end
end
