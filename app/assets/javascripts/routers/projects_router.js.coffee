class Portfolio.Routers.Projects extends Backbone.Router
  routes:
    #routing the JS
    '': 'index' #root path goes to index action
    'projects/:id': 'show'


  initialize: ->
    #initializing a new instance of the class
    @collection = new Portfolio.Collections.Projects()
    #must reset because it fetches before the collection gets rendered otherwise
    @collection.fetch(reset: true)



  index: ->
    alert "Index page has loaded"
    view = new WdiBackboneDemo.Views.ProjectsIndex(collection: @collection)
    $('#container').html(view.render().el)


  show: (id) ->
    #currently nothing is happening, but this page is where the magic is going to happen
    alert "You are showing an individual project"