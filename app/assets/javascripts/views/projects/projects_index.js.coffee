class Portfolio.Views.ProjectsIndex extends Backbone.View

  initialize: ->
    @collection.on('reset', @render, this)

  template: JST['projects/index']


  render: ->
    #projects is a local varaible
    $(@el).html(@template(projects: @collection))
    this
    #return this WHOLE class - Portfolio.Views.ProjectsIndex