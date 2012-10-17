#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates
#= require_tree ./routes
#= require_self
EmberjsBlog.store = DS.Store.create(
  adapter: DS.RESTAdapter.create(bulkCommit: false)
  revision: 4
)
$ ->
	EmberjsBlog.initialize()
