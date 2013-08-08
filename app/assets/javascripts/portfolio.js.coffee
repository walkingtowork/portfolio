window.Portfolio =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Portfolio.Routers.Projects
    Backbone.history.start()

$(document).ready ->
  Portfolio.initialize()
