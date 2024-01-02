require_relative './render_with_flash/render'

if defined?(Rails::Railtie)
  require_relative './render_with_flash/railtie'
else
  ActionController::Base.send :prepend, RenderWithFlash::Render
end
