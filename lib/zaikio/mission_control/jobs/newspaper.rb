# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class Newspaper < Base
        has_one_part :content, required: true
        has_many_parts :inserts
      end
    end
  end
end
