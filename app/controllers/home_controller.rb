require 'components/layout'

class HomeController < ApplicationController
  def index
    @app = Clearwater::Application.new(
      component: Layout.new,
      router: Clearwater::Router.new(location: request),
    )
  end
end
