module Zaikio
  module MissionControl
    module Worksteps
      class Base < Zaikio::MissionControl::Base
        require "yaml"
        RELATIVE_PATH_TO_JOBS_YML = "../../../../config/data/worksteps.yml"
        worksteps = YAML.safe_load_file(File.join(File.dirname(__FILE__), RELATIVE_PATH_TO_JOBS_YML), symbolize_names: true)
        worksteps.each do |klass_name, intermediate_products|
          Zaikio::MissionControl::Worksteps.const_set(klass_name.to_s.classify, Class.new(Base))
          Zaikio::MissionControl::Worksteps.const_get(klass_name.to_s.classify).instance_variable_set(:@intermediate_products, intermediate_products)
        end

        class << self
          def intermediate_products
            @intermediate_products.flat_map do |product, option|
              return [product] if option[:required]

              product.to_s.concat("_maybe").to_sym
            end
          end
        end
      end
    end
  end
end
