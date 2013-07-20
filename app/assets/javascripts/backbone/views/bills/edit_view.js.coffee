VitaminM.Views.Bills ||= {}

class VitaminM.Views.Bills.EditView extends Backbone.View
  template: JST["backbone/templates/bills/edit"]

  events:
    "submit #edit-bill": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (bill) =>
        @model = bill
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
