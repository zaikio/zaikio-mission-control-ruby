module Zaikio
  module MissionControl
    class ShippingOption < Base
      attributes :id, :carrier, :service
      has_one :address, uri: nil, class_name: "Address"
    end
  end
end
