require "test_helper"

class Zaikio::MissionControlTest < ActiveSupport::TestCase
  test "is a module" do
    assert_kind_of Module, Zaikio::MissionControl
  end

  test "has version number" do
    assert_not_nil ::Zaikio::MissionControl::VERSION
  end

  test "it is configurable" do
    Zaikio::MissionControl.configure do |config|
      config.environment = :test
    end

    assert_equal :test, Zaikio::MissionControl.configuration.environment
  end
end
