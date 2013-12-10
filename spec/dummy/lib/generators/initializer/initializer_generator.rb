class InitializerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def copy_yaml_file
    copy_file(File.expand_path('rrod.yml', './config'), File.expand_path('rrod_copy.yml', './config'))
  end
end
