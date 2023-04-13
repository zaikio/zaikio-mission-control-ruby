module Zaikio
  module MissionControl
    class Part < Base
      # Associations
      has_one :job, class_name: "Zaikio::MissionControl::Job", uri: nil
      has_one :desired_substrate, class_name: "Zaikio::MissionControl::DesiredSubstrate", uri: nil
      has_many :colors, class_name: "Zaikio::MissionControl::Color", uri: nil
      has_many :finishing_applications, class_name: "Zaikio::MissionControl::FinishingApplication", uri: nil
      has_many :finishings, class_name: "Zaikio::MissionControl::Finishing", uri: nil
      has_many :file_references, class_name: "Zaikio::MissionControl::FileReference", uri: nil
    end
  end
end
