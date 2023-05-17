module Zaikio
  module MissionControl
    class ProductionFrame < Base
      attributes :owner_id, :published_at, :slots, :created_at, :updated_at
      # Associations
      has_many :slots, class_name: "Zaikio::MissionControl::Slot", uri: nil
    end
  end
end
