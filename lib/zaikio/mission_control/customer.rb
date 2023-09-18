module Zaikio
  module MissionControl
    class Customer < Base
      attributes :id, :name, :text_identifier, :references, :created_at, :updated_at
    end
  end
end
