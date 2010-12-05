class ApplicationController < ActionController::Base
  protect_from_forgery

  def debug oop
    #all the instance variables are available here
    p oop.inspect
  end

config.generators do |g|
  g.test_framework :rspec, :fixture => true, :views => false
  g.integration_tool :capybara, :fixture => true, :views => true
  #g.fixture_replacement :factory_girl, :dir => "spec/support/factories"
end
end
