module Monologue
  class Environment
    include EnvironmentExtensions

  end

  def self.config(&block)
    yield(Rails.application.config.monologue)
  end
end