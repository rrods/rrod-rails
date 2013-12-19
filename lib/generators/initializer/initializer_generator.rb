class InitializerGenerator < Rails::Generators::NamedBase
  # source_root File.expand_path('../templates', __FILE__)

  def create_yaml_file
    # File.open(File.expand_path('rrod_test.yml', './config'), "w") do |file|
    File.open('rrod.yml', 'w') do |file|
    env_settings = {
      development: [ host: '0.0.0.0', http_port: 1500, pb_port: 1501 ],
      test:        [ host: '0.0.0.0', http_port: 1500, pb_port: 1501 ], 
      production:  [ host: '0.0.0.0', http_port: 1500, pb_port: 1501 ] 
      }

    file.write env_settings.to_yaml
    end
  end

end
