module Zaikio
  module MissionControl
    class Job < Base
      # Associations
      has_many :parts, class_name: "Zaikio::MissionControl::Part", uri: nil
    end
  end
end
