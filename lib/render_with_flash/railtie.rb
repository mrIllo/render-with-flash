require_relative '../render_with_flash'
require 'rails'

module RenderWithFlash
  class Railtie < ::Rails::Railtie
    initializer 'render_with_flash.add_to_action_controller' do
      ActionController::Rendering.send :prepend, RenderWithFlash::Render
    end
  end
end
