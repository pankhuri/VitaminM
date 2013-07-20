VitaminM.Views.BillTypes ||= {}

class VitaminM.Views.BillTypes.BillTypeView extends Backbone.View
  template: JST["backbone/templates/bill_types/bill_type"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
