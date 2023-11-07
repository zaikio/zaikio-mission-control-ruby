module Zaikio
  module MissionControl
    class IntermediateProduct < Base
      attributes :created_at,
                 :updated_at,
                 :kind,
                 :expected_quantity,
                 :actual_quantity,
                 :expected_waste,
                 :actual_waste,
                 :suspicious_quantities
    end
  end
end
