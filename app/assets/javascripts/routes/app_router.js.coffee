EmberjsBlog.Router = Ember.Router.extend(
  location: 'hash'

  root: Ember.Route.extend(
    index: Ember.Route.extend(
      route: '/'
      redirectsTo: 'posts'
      # You'll likely want to connect a view here.
      # connectOutlets: function(router) {
      #   router.get('applicationController').connectOutlet(App.MainView);
      # }

      # Layout your routes here...
    )
    posts: Ember.Route.extend(
      route: '/posts'
      showPost: Ember.Route.transitionTo('post')
      connectOutlets: (router) ->
        router.get('applicationController').connectOutlet( 'posts', EmberjsBlog.Post.find())

    )
    post: Ember.Route.extend(
      route: '/posts/:post_id'
      showPosts: Ember.Route.transitionTo("posts")
      connectOutlets: (router, post) ->
        router.get('applicationController').connectOutlet( 'post', post)
    )
  )
)

