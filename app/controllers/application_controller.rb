class ApplicationController < ActionController::Base
  protect_from_forgery


config.generators do |g|
  g.test_framework :rspec, :fixture => true, :views => false
  g.integration_tool :rspec, :fixture => true, :views => true
  #g.fixture_replacement :factory_girl, :dir => "spec/support/factories"
end
end
