# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class Notebook < Base
        has_many_parts :contents, required: true
        has_one_part :cover, required: true
        has_one_part :back
      end
    end
  end
end
