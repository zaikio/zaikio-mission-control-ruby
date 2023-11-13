module Zaikio
  module MissionControl
    module IntermediateProducts
      class Base < Zaikio::MissionControl::Base
        require "yaml"
        RELATIVE_PATH_TO_INTERMEDIATE_PRODUCTS_YML = "../../../../config/data/intermediate_products.yml".freeze
        intermediate_products = YAML.safe_load_file(File.join(File.dirname(__FILE__), RELATIVE_PATH_TO_INTERMEDIATE_PRODUCTS_YML), symbolize_names: true)
        intermediate_products.each do |klass_name|
          Zaikio::MissionControl::IntermediateProducts.const_set(klass_name, Class.new(Base))
        end
      end
    end
  end
end
