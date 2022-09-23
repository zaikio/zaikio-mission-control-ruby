require "logger"

module Zaikio
  module MissionControl
    class Configuration < Zaikio::Client::Helpers::Configuration
      def self.hosts
        {
          development: "https://mc.zaikio.test/api/v1/",
          test: "https://mc.zaikio.test/api/v1/",
          staging: "https://mc.staging.zaikio.com/api/v1/",
          sandbox: "https://mc.sandbox.zaikio.com/api/v1/",
          production: "https://mc.zaikio.com/api/v1/"
        }.freeze
      end
    end
  end
end
