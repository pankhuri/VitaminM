VitaminM.Views.BillTypes ||= {}

class VitaminM.Views.BillTypes.EditView extends Backbone.View
  template: JST["backbone/templates/bill_types/edit"]

  events:
    "submit #edit-bill_type": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (bill_type) =>
        @model = bill_type
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
