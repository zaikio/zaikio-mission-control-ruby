module Zaikio
  module MissionControl
    module Parts
      class Base < Zaikio::MissionControl::Base
        require "yaml"
        RELATIVE_PATH_TO_PARTS_YML = "../../../../config/data/parts.yml".freeze
        parts = YAML.safe_load_file(File.join(File.dirname(__FILE__), RELATIVE_PATH_TO_PARTS_YML), symbolize_names: true)
        parts.each do |klass_name|
          Zaikio::MissionControl::Parts.const_set(klass_name, Class.new(Base))
        end
      end
    end
  end
end
