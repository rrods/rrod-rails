class Rrod::InstallGenerator < Rails::Generators::Base
  def create_rrod_yaml
    create_file Rails.root.join('config','rrod.yml'), env_settings.to_yaml
  end

  def env_settings
    {
      "development" => [ host: '127.0.0.1' ],
      "test"        => [ host: '0.0.0.0', http_port: 15_000, pb_port: 15_001 ],
      "production"  => [ host: 'fancy.production.server.1' ]
    }
  end
end
