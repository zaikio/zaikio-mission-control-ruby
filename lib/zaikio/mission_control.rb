require "faraday"
require "spyke"
require "zaikio-client-helpers"
require "zaikio/mission_control/configuration"

# Models
require "zaikio/mission_control/base"

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
      end

      def with_token(token, &block)
        Zaikio::Client.with_token(token, &block)
      end

      def create_connection
        self.connection = Zaikio::Client.create_connection(configuration)
      end
    end
  end
end
