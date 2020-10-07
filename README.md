# render-with-flash
In Rails do
  render action: :new, alert: "Some errors occured"
just you would do
  redirect_to foos_path, notice: "Foo saved"

While this works for redirect_to out of the box we simply can do the same with render calls.
we simply can do the same with render calls.
We just have to make use of the prepend method of Ruby>=2.0 and patch the render function.

inspired by http://www.perfectline.co/blog/2011/11/adding-flash-message-capability-to-your-render-calls-in-rails-3/

