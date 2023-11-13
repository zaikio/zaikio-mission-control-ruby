module Zaikio
  module MissionControl
    module Finishings
      class Base < Zaikio::MissionControl::Base
        require "yaml"
        RELATIVE_PATH_TO_FINISHINGS_YML = "../../../../config/data/finishings.yml"
        finishings = YAML.safe_load_file(File.join(File.dirname(__FILE__), RELATIVE_PATH_TO_FINISHINGS_YML), symbolize_names: true)
        finishings.each do |klass_name|
          Zaikio::MissionControl::Finishings.const_set(klass_name, Class.new(Base))
        end
      end
    end
  end
end
