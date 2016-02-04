require 'rails_helper'
require 'capybara/rspec'
require 'capybara/rails'

Capybara.current_driver = :webkit

# Put your acceptance spec helpers inside spec/acceptance/support
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}
