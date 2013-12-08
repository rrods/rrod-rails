ENV['RAILS_ENV'] = 'test'

require File.expand_path('../dummy/config/application', __FILE__)

require 'rails/test_help'
require 'rspec/rails'
require 'pry'
require 'capybara/rspec'
require 'rrod/test_server/rspec'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end

Rrod.configuration.test_server_yml = File.expand_path('../support/test_server.yml', __FILE__)
Rrod::TestServer::RSpec.enable!
