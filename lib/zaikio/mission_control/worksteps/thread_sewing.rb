module Zaikio
  module MissionControl
    module Worksteps
      class ThreadSewing < Base
        has_one_intermediate_product :book_block, required: true
      end
    end
  end
end
