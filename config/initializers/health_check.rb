# frozen_string_literal: true

if defined?(HealthCheck)
  HealthCheck.setup do |config|
    config.standard_checks += ["emailconf"]
  end
end
