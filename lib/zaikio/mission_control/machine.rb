module Zaikio
  module MissionControl
    class Machine < Base
      # Associations
      has_many :availabilities, class_name: "Zaikio::MissionControl::Availability",
                                uri: "machines/:machine_id/availabilities"
    end
  end
end
