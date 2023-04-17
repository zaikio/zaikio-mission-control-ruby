module Zaikio
  module MissionControl
    class Specialist < Base
      # Associations
      has_many :availabilities, class_name: "Zaikio::MissionControl::Availability",
                                uri: "specialists/:machine_id/availabilities"
    end
  end
end
