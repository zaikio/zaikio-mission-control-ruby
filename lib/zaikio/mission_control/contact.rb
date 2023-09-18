module Zaikio
  module MissionControl
    class Contact < Base
      attributes :id, :display_name, :role, :email, :phone, :created_at, :updated_at
    end
  end
end
