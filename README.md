# Server-rendered Clearwater example

To server-render a Clearwater app with Rails:

- [Add `app/shared` to your Ruby load path](https://github.com/jgaskins/server_rendered_clearwater_example/blob/master/config/application.rb#L15)
- [Add `app/shared` to the Sprockets load path](https://github.com/jgaskins/server_rendered_clearwater_example/blob/master/config/initializers/assets.rb#L10)
- [Write your shared components in `app/shared`](https://github.com/jgaskins/server_rendered_clearwater_example/blob/master/app/shared/components/layout.rb)
- Rename `app/assets/javascripts/application.js` to [`app/assets/javascripts/application.rb`](https://github.com/jgaskins/server_rendered_clearwater_example/blob/master/app/assets/javascripts/application.rb)
- [Add a Rails controller that instantiates your app on the server similar to the client app](https://github.com/jgaskins/server_rendered_clearwater_example/blob/master/app/controllers/home_controller.rb)
  - [Make sure to pass a router with its location set to the request](https://github.com/jgaskins/server_rendered_clearwater_example/blob/master/app/controllers/home_controller.rb#L7)
  - [Add that route as the root and catch-all routes](https://github.com/jgaskins/server_rendered_clearwater_example/blob/master/config/routes.rb#L2-L3)
  - [Add a view for that controller that renders the app inside the element your client app will render into](https://github.com/jgaskins/server_rendered_clearwater_example/blob/master/app/views/home/index.html.erb)
