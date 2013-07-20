VitaminM.Views.BillTypes ||= {}

class VitaminM.Views.BillTypes.ShowView extends Backbone.View
  template: JST["backbone/templates/bill_types/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
