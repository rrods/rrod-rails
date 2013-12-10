require 'yaml'

class Rrod::Engine < ::Rails::Engine

  initializer "rrod.rails.configuration" do |app|
    nodes = YAML.load_file(Rails.root.join('config', 'rrod.yml'))[Rails.env]
    Rrod.configuration.nodes = nodes 
  end


end
