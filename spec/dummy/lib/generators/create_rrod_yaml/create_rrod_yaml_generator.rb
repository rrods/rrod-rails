class CreateRrodYamlGenerator < Rails::Generators::NamedBase

  # source_root File.expand_path('../templates', __FILE__)

  def initialize 
    src = File.expand_path('../config', 'rrod.yml')
    dest = File.expand_path('..bin', 'rrod_copy.yml')
    copy_file(src, dest)
  end

  def copy_file(src, dest, preserve = true, dereference = true)
    
  end


end
