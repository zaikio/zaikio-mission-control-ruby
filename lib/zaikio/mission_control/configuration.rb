require "logger"

module Zaikio
  module MissionControl
    class Configuration < Zaikio::Client::Helpers::Configuration
      def self.hosts
        {
          development: "https://data.zaikio.test/api/v1/",
          test: "https://data.zaikio.test/api/v1/",
          staging: "https://data.staging.zaikio.com/api/v1/",
          sandbox: "https://data.sandbox.zaikio.com/api/v1/",
          production: "https://data.zaikio.com/api/v1/"
        }.freeze
      end
    end
  end
end
