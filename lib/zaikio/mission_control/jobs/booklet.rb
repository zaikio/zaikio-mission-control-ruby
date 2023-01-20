# frozen_string_literal: true

module Zaikio
  module MissionControl
    module Jobs
      class Booklet < Base
        has_many_parts :contents, required: true
        has_one_part :cover
        has_many_parts :inserts
        has_many_parts :outserts
      end
    end
  end
end
