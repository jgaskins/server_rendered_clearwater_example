require 'opal'
require 'clearwater'

require 'components/layout'

app = Clearwater::Application.new(
  component: Layout.new,
  element: Bowser.document['#app'],
)
