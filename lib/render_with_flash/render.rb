# What I want to be able to do is this:
#   if @foo.save
#     redirect_to foos_path, notice: "Foo saved"
#   else
#     render action: :new, alert: "Some errors occured"
#   end
# While this works for redirect_to out of the box
# we simply can do the same with render calls.
# We just have to extend the render function by extending the module
# and requiring this in an initializer or engine file.
#
# inspired by http://www.perfectline.co/blog/2011/11/adding-flash-message-capability-to-your-render-calls-in-rails-3/
#
module RenderWithFlash
  module Render

    def render(*args)
      options = args.extract_options!

      # default flash_types and those configured via add_flash_types
      self.class._flash_types.each do |flash_type|
        if type = options.delete(flash_type)
          flash.now[flash_type] = type
        end
      end

      # general flash hash
      if other_flashes = options.delete(:flash)
        other_flashes.each do |k,v|
          flash.now[k] = v
        end
      end

      super
    end

  end
end
