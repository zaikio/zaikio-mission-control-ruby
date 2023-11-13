module Zaikio
  module MissionControl
    module Jobs
      class Base < Zaikio::MissionControl::Base
        require "yaml"
        RELATIVE_PATH_TO_JOBS_YML = "../../../../config/data/jobs.yml"
        jobs = YAML.safe_load_file(File.join(File.dirname(__FILE__), RELATIVE_PATH_TO_JOBS_YML), symbolize_names: true)
        jobs.each do |klass_name, parts|
          Zaikio::MissionControl::Jobs.const_set(klass_name.to_s.classify, Class.new(Base))
          Zaikio::MissionControl::Jobs.const_get(klass_name.to_s.classify).instance_variable_set(:@parts, parts)
        end

        class << self
          def parts
            @parts ||= {}
            @parts.keys.map(&:to_sym)
          end

          def worksteps
            steps ||= {}

            @parts.keys.flat_map do |part|
              steps[part] = Zaikio::MissionControl::Parts.const_get(part.to_s.classify).worksteps
            end

            steps
          end

          def finishings
            finishings ||= {}

            @parts.keys.flat_map do |part|
              finishings[part] = Zaikio::MissionControl::Parts.const_get(part.to_s.classify).finishings
            end

            finishings
          end

          def part_klasses
            parts.map do |name|
              Zaikio::MissionControl::Parts.const_get(name.to_s.classify)
            end
          end

          def multiples?(part_name_or_klass)
            part_config(part_name_or_klass)[:multiple]
          end

          def required?(part_name_or_klass)
            part_config(part_name_or_klass)[:required]
          end

          def part_config(part_name_or_klass)
            part_name_or_klass = if part_name_or_klass.is_a?(Symbol)
                                   part_name_or_klass.to_s.singularize.to_sym
                                 else
                                   part_name_or_klass.name.split("::").last.underscore.to_sym
                                 end
            @parts[part_name_or_klass] or raise ArgumentError,
                                                "Part #{part_name_or_klass} could not be found in #{self.class.name}"
          end
        end
      end
    end
  end
end
