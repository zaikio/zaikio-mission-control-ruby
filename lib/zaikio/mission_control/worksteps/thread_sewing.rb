module Zaikio
  module MissionControl
    module Worksteps
      class ThreadSewing < Base
        @intermediate_products = {
          book_block: { required: true }
        }
      end
    end
  end
end
