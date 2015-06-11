require 'yaml'
require 'erb'

class Rrod::Engine < ::Rails::Engine

  initializer "rrod.rails.configuration" do |app|
    begin
      nodes = YAML.load_file(ERB.new(Rails.root.join('config', 'rrod.yml')).result)[Rails.env]
      Rrod.configuration.nodes = nodes 
    rescue Errno::ENOENT => _e
      message = "Missing config/rrod.yml file please run `rails generate rrod:install`"
      Rails.logger.warn message
      STDERR.puts message
    end
  end


end
