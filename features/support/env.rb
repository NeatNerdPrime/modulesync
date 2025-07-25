# frozen_string_literal: true

require 'aruba/cucumber'

require_relative '../../spec/helpers/faker'

ModuleSync::Faker.working_directory = File.expand_path('faker', Aruba.config.working_directory)

Before do
  @aruba_timeout_seconds = 5

  aruba.config.activate_announcer_on_command_failure = %i[stdout stderr]
end
