module Zaikio
  module MissionControl
    module Parts
      class Base < Zaikio::MissionControl::Base
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
