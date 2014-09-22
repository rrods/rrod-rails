require 'yaml'

class Rrod::Engine < ::Rails::Engine

  initializer "rrod.rails.configuration" do |app|
    begin
      nodes = YAML.load_file(Rails.root.join('config', 'rrod.yml'))[Rails.env]
      Rrod.configuration.nodes = nodes.is_a?(Hash) ? nodes.fetch(:nodes) : nodes 
    rescue Errno::ENOENT => _e
      message = "Missing config/rrod.yml file please run `rails generate rrod:install`"
      Rails.logger.warn message
      STDERR.puts message
    end
  end


end
