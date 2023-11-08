require "faraday"
require "spyke"
require "zaikio-client-helpers"
require "zaikio/mission_control/configuration"

# Jobs
require "zaikio/mission_control/base"
require "zaikio/mission_control/jobs/base"

# Parts
require "zaikio/mission_control/parts/base"
require "zaikio/mission_control/parts/content"
require "zaikio/mission_control/parts/cover"
require "zaikio/mission_control/parts/insert"
require "zaikio/mission_control/parts/outsert"
require "zaikio/mission_control/parts/card"
require "zaikio/mission_control/parts/carton"
require "zaikio/mission_control/parts/lid"
require "zaikio/mission_control/parts/business_card"
require "zaikio/mission_control/parts/carton"
require "zaikio/mission_control/parts/case"
require "zaikio/mission_control/parts/compliment_slip"
require "zaikio/mission_control/parts/content"
require "zaikio/mission_control/parts/continuation_sheet"
require "zaikio/mission_control/parts/cover_letter"
require "zaikio/mission_control/parts/cover"
require "zaikio/mission_control/parts/endpaper"
require "zaikio/mission_control/parts/envelope"
require "zaikio/mission_control/parts/flyer"
require "zaikio/mission_control/parts/folder"
require "zaikio/mission_control/parts/folding_card"
require "zaikio/mission_control/parts/case"
require "zaikio/mission_control/parts/endpaper"
require "zaikio/mission_control/parts/jacket"
require "zaikio/mission_control/parts/label"
require "zaikio/mission_control/parts/leaflet"
require "zaikio/mission_control/parts/letter_head"
require "zaikio/mission_control/parts/lid"
require "zaikio/mission_control/parts/map_sheet"
require "zaikio/mission_control/parts/outsert"
require "zaikio/mission_control/parts/postcard"
require "zaikio/mission_control/parts/poster"
require "zaikio/mission_control/parts/self_mailer"
require "zaikio/mission_control/parts/sheet"

# Finishings
require "zaikio/mission_control/finishings/base"

# Worksteps
require "zaikio/mission_control/worksteps/base"
require "zaikio/mission_control/worksteps/ctp"
require "zaikio/mission_control/worksteps/cutting"
require "zaikio/mission_control/worksteps/folding"
require "zaikio/mission_control/worksteps/lamination"
require "zaikio/mission_control/worksteps/printing"
require "zaikio/mission_control/worksteps/thread_sewing"

# Intermediate products
require "zaikio/mission_control/intermediate_product/base"
require "zaikio/mission_control/intermediate_product/book_block"
require "zaikio/mission_control/intermediate_product/fold"
require "zaikio/mission_control/intermediate_product/laminated_sheet"
require "zaikio/mission_control/intermediate_product/plate"
require "zaikio/mission_control/intermediate_product/product"
require "zaikio/mission_control/intermediate_product/sheet"

# Models
require "zaikio/mission_control/color"
require "zaikio/mission_control/contact"
require "zaikio/mission_control/customer"
require "zaikio/mission_control/desired_substrate"
require "zaikio/mission_control/execution"
require "zaikio/mission_control/file_reference"
require "zaikio/mission_control/finishing_application"
require "zaikio/mission_control/finishing"
require "zaikio/mission_control/job"
require "zaikio/mission_control/machine"
require "zaikio/mission_control/order_line_item"
require "zaikio/mission_control/order"
require "zaikio/mission_control/part"
require "zaikio/mission_control/production_frame"
require "zaikio/mission_control/shipping_option"
require "zaikio/mission_control/slot"
require "zaikio/mission_control/production_frame"
require "zaikio/mission_control/workstep"
require "zaikio/mission_control/intermediate_product"

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

      def workstep_klasses
        @workstep_klasses ||= Zaikio::MissionControl::Worksteps
                              .constants.sort
                              .map { |c| Zaikio::MissionControl::Worksteps.const_get(c) }
                              .select { |c| c.is_a?(Class) } - [Zaikio::MissionControl::Worksteps::Base]
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

      def worksteps
        @worksteps ||= workstep_klasses.map { |k| k.name.demodulize.underscore.to_sym }
      end

      (Zaikio::MissionControl::Jobs.constants  - [:Base]).each do |klass|
        Zaikio.const_set(klass, Zaikio::MissionControl::Jobs.const_get(klass))
      end
    end
  end
end
