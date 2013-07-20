VitaminM.Views.BillTypes ||= {}

class VitaminM.Views.BillTypes.IndexView extends Backbone.View
  template: JST["backbone/templates/bill_types/index"]

  initialize: () ->
    @options.billTypes.bind('reset', @addAll)

  addAll: () =>
    @options.billTypes.each(@addOne)

  addOne: (billType) =>
    view = new VitaminM.Views.BillTypes.BillTypeView({model : billType})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(billTypes: @options.billTypes.toJSON() ))
    @addAll()

    return this
