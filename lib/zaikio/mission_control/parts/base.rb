module Zaikio
  module MissionControl
    module Parts
      class Base < Zaikio::MissionControl::Base
        require "yaml"
        RELATIVE_PATH_TO_PARTS_YML = "../../../../config/data/parts.yml".freeze
        parts = YAML.safe_load_file(File.join(File.dirname(__FILE__), RELATIVE_PATH_TO_PARTS_YML), symbolize_names: true)

        parts.each do |klass_name, attributes|
          Zaikio::MissionControl::Parts.const_set(klass_name, Class.new(Base))
          next if attributes.nil?

          Zaikio::MissionControl::Parts.const_get(klass_name).instance_variable_set(:@worksteps, attributes[:worksteps])
          Zaikio::MissionControl::Parts.const_get(klass_name).instance_variable_set(:@finishings, attributes[:finishings])
        end

        class << self
          def finishings
            @finishings ||= {}

            @finishings.keys.flat_map do |finishing, option|
              option[:required] ? finishing : finishing.to_s.concat("_maybe").to_sym
            end
          end

          def worksteps_from_parts
            @worksteps ||= {}

            @worksteps.flat_map do |workstep, option|
              name = option[:required] ? workstep : workstep.to_s.concat("_maybe").to_sym
              { name => Zaikio::MissionControl::Worksteps.const_get(workstep.to_s.classify).intermediate_products }
            end
          end

          def worksteps_from_finishings
            @finishings ||= {}

            @finishings.flat_map do |finishing, option|
              name = option[:required] ? finishing : finishing.to_s.concat("_maybe").to_sym
              { name => Zaikio::MissionControl::Worksteps.const_get(finishing.to_s.classify).intermediate_products }
            end
          end

          def worksteps
            worksteps_from_parts.concat(worksteps_from_finishings)
          end
        end
      end
    end
  end
end
