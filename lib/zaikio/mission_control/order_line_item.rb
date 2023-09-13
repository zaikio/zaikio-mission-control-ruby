module Zaikio
  module MissionControl
    class OrderLineItem < Base
      include_root_in_json :execution

      attributes :id, :references, :kind, :job_id, :quantity, :unit, :description, :net_price, :net_total_price,
                 :gross_price, :gross_total_price, :order_number, :taxes, :tax_rate, :created_at, :updated_at, :shipping_option_id
    end
  end
end
