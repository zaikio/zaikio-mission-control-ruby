module Zaikio
  module MissionControl
    module Jobs
      class SelfMailer < Base
        @parts = { self_mailer: { required: true, multiple: false } }
      end
    end
  end
end
