module Zaikio
  module MissionControl
    class Machine < Base
      def production_schedule_slots
        @production_schedule_slots ||= get(:production_schedule)["production_schedule_slots"].map do |slot|
          Zaikio::MissionControl::Slot.new(slot)
        end
      end
    end
  end
end
