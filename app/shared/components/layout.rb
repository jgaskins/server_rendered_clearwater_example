require 'clearwater/component'

class Layout
  include Clearwater::Component

  def render
    h1('Hello world!')
  end
end
