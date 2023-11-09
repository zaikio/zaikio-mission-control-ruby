# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.5.0]

- Add new `Card` Mission Control `Job` kinds.

## [0.4.2]

- Fix `Folder` and `FoldingCard` Mission Control `Job` kinds being listed as available kinds 

## [0.4.1]

- Add `belongs_to` relationship to `Execution` for `Workstep`

## [0.4.0]

- Add new `Workstep` and `IntermediateProduct` resources.
- Add new `Folder` and `FoldingCard` Mission Control `Job` kinds.

## [0.3.0]

- Change target endpoint from `mc` to `data` to adapt to platform change

## [0.2.12]

- Add `Contact` and `Customer` models and related associations to `Order`

## [0.2.11]

- Include root in JSON payload for `OrderLineItem`

## [0.2.10]

- Include root in JSON payload for `Execution`

## [0.2.9]

- Add `ShippingOption` resource and association to `Order`

## [0.2.8]

- Add `Order` and `LineItem` resource

## [0.2.7]

- Add `Execution` resource

## [0.2.6]

- Add `ProductionFrame` resource & basic api retrieval

## [0.2.5]

- Add `Machine` and `Slot` resources, basic api retrieval for `Machine` production_schedule
- Remove availabilities for machines and specialists (will be moved to the hub)

## [0.2.4]

- Add availabilities for machines and specialists

## [0.2.3]

- Add basic api resource retrieval for `Jobs`

## [0.2.2]

- Improve german translations

## [0.2.1]

- Improve german translations

## [0.2.0]

- Fix locale load path
- Fix gem/repo name from `zaikio-mission-control` to `zaikio-mission_control`

## [0.1.0]

- Add finishings specification
- Add jobs and parts specification

[Unreleased]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.5.0..HEAD
[0.5.0]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.4.2..v0.5.0
[0.4.2]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.4.0..v0.4.2
[0.4.1]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.4.0..v0.4.1
[0.4.0]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.3.0..v0.4.0
[0.3.0]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.12..v0.3.0
[0.2.12]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.11..v0.2.12
[0.2.11]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.10..v0.2.11
[0.2.10]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.9..v0.2.10
[0.2.9]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.8..v0.2.9
[0.2.8]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.7..v0.2.8
[0.2.7]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.6..v0.2.7
[0.2.6]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.5..v0.2.6
[0.2.5]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.4..v0.2.5
[0.2.4]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.3..v0.2.4
[0.2.3]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.2..v0.2.3
[0.2.2]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.1..v0.2.2
[0.2.1]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.2.0..v0.2.1
[0.2.0]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/v0.1.0..v0.2.0
[0.1.0]: https://github.com/zaikio/zaikio-mission_control-ruby/compare/064cd089bd85d6061ddef7b85f3fc457635c9b05..v0.1.0
