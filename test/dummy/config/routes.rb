Rails.application.routes.draw do
  mount RenderWithFlash::Engine => "/render_with_flash"
end
