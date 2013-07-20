VitaminM.Views.Bills ||= {}

class VitaminM.Views.Bills.ShowView extends Backbone.View
  template: JST["backbone/templates/bills/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
