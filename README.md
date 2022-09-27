# Zaikio::MissionControl

Ruby API Client for Zaikio Mission Control.

## Installation

### 1. Add this line to your application's Gemfile:

```ruby
gem 'zaikio-mission-control'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install zaikio-mission-control
```

### 2. Configure the gem:

```rb
# config/initializers/zaikio_mission_control.rb

Zaikio::MissionControl.configure do |config|
  config.environment = :production # sandbox or production
end
```

## Usage

### Jobs & Parts specification

This gem contains helper methods to list jobs and parts and to understand which parts a job consists of.

```rb
Zaikio::MissionControl.jobs => #[:booklet, :box, ...]
Zaikio::MissionControl.parts => #[:back, :base, ...]

Zaikio::MissionControl.job_klasses => # [Zaikio::MissionControl::Jobs::Booklet, Zaikio::MissionControl::Jobs::Box, ...]
Zaikio::MissionControl.part_klasses => # [Zaikio::MissionControl::Parts::Back, Zaikio::MissionControl::Parts::Base, ...]

# Localize models
I18n.with_locale(:de) do
  Zaikio::MissionControl::Jobs::Booklet.model_name.human # => Heft
end
```

Per job you can fetch the parts and their configuration:

```rb
Zaikio::MissionControl::Jobs::Booklet.parts # => [:content, :cover, :insert, :outsert]
Zaikio::MissionControl::Jobs::Booklet.part_klasses # => [Zaikio::MissionControl::Parts::Content, ...]

Zaikio::MissionControl::Jobs::Booklet.multiples?(:content) # => true
Zaikio::MissionControl::Jobs::Booklet.multiples?(Zaikio::MissionControl::Parts::Content) # => true
Zaikio::MissionControl::Jobs::Booklet.required?(:content) # => true
Zaikio::MissionControl::Jobs::Booklet.required?(Zaikio::MissionControl::Parts::Content) # => true
```
