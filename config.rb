require '_helpers'

compass_config do |config|
  config.output_style = :compressed
  config.line_comments = false
end

activate :email_template_helpers

set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :is_building, false
set :add_regions, false
set :build_dir, ENV['BUILD_TYPE'] || 'build'

configure :build do
  activate :minify_css
  activate :relative_assets  
  set :is_building, ENV['BUILD_TYPE'] == 'preview' ? false : true
end
