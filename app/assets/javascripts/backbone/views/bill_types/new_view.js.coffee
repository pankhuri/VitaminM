VitaminM.Views.BillTypes ||= {}

class VitaminM.Views.BillTypes.NewView extends Backbone.View
  template: JST["backbone/templates/bill_types/new"]

  events:
    "submit #new-bill_type": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (bill_type) =>
        @model = bill_type
        window.location.hash = "/#{@model.id}"

      error: (bill_type, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
