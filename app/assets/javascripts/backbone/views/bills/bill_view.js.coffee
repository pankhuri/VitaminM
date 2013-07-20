VitaminM.Views.Bills ||= {}

class VitaminM.Views.Bills.BillView extends Backbone.View
  template: JST["backbone/templates/bills/bill"]

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
