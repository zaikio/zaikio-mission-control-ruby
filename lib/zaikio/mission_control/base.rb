module Zaikio
  module MissionControl
    class Base < Zaikio::Client::Model
      self.callback_methods = { create: :post, update: :patch }.freeze
    end
  end
end
