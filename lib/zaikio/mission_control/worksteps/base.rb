module Zaikio
  module MissionControl
    module Worksteps
      class Base < Zaikio::MissionControl::Base
        class << self
          def intermediate_products
            @intermediate_products ||= {}

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
