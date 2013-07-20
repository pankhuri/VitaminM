VitaminM.Views.Bills ||= {}

class VitaminM.Views.Bills.NewView extends Backbone.View
  template: JST["backbone/templates/bills/new"]

  events:
    "submit #new-bill": "save"

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
      success: (bill) =>
        @model = bill
        window.location.hash = "/#{@model.id}"

      error: (bill, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
