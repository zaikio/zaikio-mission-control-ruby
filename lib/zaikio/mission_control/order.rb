module Zaikio
  module MissionControl
    class Order < Base
      attributes :id, :state, :references, :currency, :net_total, :gross_total, :started_at, :taxes,
                 :confirmed_at, :canceled_at, :fulfilled_at, :created_at, :updated_at

      # Associations
      has_many :line_items, class_name: "Zaikio::MissionControl::OrderLineItem", uri: nil
      has_many :shipping_options, class_name: "Zaikio::MissionControl::ShippingOption", uri: nil
      has_many :contacts, class_name: "Zaikio::MissionControl::Contact", uri: nil
      has_one :customer, class_name: "Zaikio::MissionControl::Customer", uri: nil
    end
  end
end
