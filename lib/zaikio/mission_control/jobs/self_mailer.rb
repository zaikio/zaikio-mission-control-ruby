# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class SelfMailer < Base
        has_one_part :self_mailer, required: true
      end
    end
  end
end
