begin
  require 'sass/plugin'

  Sass::Plugin.add_template_location \
    File.join(__FILE__, '..', '..', 'assets', 'stylesheets')
rescue LoadError
  puts 'sass/plugin could not be loaded. ggs-rails scss mixins may fail'
end
