require "faraday"
require "spyke"
require "zaikio-client-helpers"
require "zaikio/mission_control/configuration"

require "zaikio/mission_control/base"

# Jobs
require "zaikio/mission_control/jobs/base"

# Parts
require "zaikio/mission_control/parts/base"

# Finishings
require "zaikio/mission_control/finishings/base"

# Worksteps
require "zaikio/mission_control/worksteps/base"

# Intermediate products
require "zaikio/mission_control/intermediate_products/base"

# Models
require "zaikio/mission_control/color"
require "zaikio/mission_control/contact"
require "zaikio/mission_control/customer"
require "zaikio/mission_control/desired_substrate"
require "zaikio/mission_control/execution"
require "zaikio/mission_control/file_reference"
require "zaikio/mission_control/finishing_application"
require "zaikio/mission_control/finishing"
require "zaikio/mission_control/intermediate_product"
require "zaikio/mission_control/job"
require "zaikio/mission_control/machine"
require "zaikio/mission_control/order_line_item"
require "zaikio/mission_control/order"
require "zaikio/mission_control/part"
require "zaikio/mission_control/production_frame"
require "zaikio/mission_control/shipping_option"
require "zaikio/mission_control/slot"
require "zaikio/mission_control/workstep"

module Zaikio
  module MissionControl
    class << self
      attr_accessor :configuration

      class_attribute :connection

      def configure
        self.connection = nil
        self.configuration ||= Configuration.new
        yield(configuration)

        Base.connection = create_connection
        I18n.load_path += Dir["#{File.expand_path('../../config/locales', __dir__)}/*.yml"]
      end

      def with_token(token, &block)
        Zaikio::Client.with_token(token, &block)
      end

      def create_connection
        self.connection = Zaikio::Client.create_connection(configuration)
      end

      def job_klasses
        @job_klasses ||= Zaikio::MissionControl::Jobs
                         .constants.sort
                         .map { |c| Zaikio::MissionControl::Jobs.const_get(c) }
                         .select { |c| c.is_a?(Class) && !(c < ActiveSupport::TestCase) } - [Zaikio::MissionControl::Jobs::Base]
      end

      def part_klasses
        @part_klasses ||= Zaikio::MissionControl::Parts.constants.sort
                                                       .map { |c| Zaikio::MissionControl::Parts.const_get(c) }
                                                       .select { |c| c.is_a?(Class) } - [Zaikio::MissionControl::Parts::Base]
      end

      def finishing_klasses
        @finishing_klasses ||= Zaikio::MissionControl::Finishings
                               .constants.sort
                               .map { |c| Zaikio::MissionControl::Finishings.const_get(c) }
                               .select { |c| c.is_a?(Class) } - [Zaikio::MissionControl::Finishings::Base]
      end

      def jobs
        @jobs ||= job_klasses.map { |k| k.name.demodulize.underscore.to_sym }
      end

      def parts
        @parts ||= part_klasses.map { |k| k.name.demodulize.underscore.to_sym }
      end

      def finishings
        @finishings ||= finishing_klasses.map { |k| k.name.demodulize.underscore.to_sym }
      end
    end
  end
end
