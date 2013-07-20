VitaminM.Views.Bills ||= {}

class VitaminM.Views.Bills.IndexView extends Backbone.View
  template: JST["backbone/templates/bills/index"]

  initialize: () ->
    @options.bills.bind('reset', @addAll)

  addAll: () =>
    @options.bills.each(@addOne)

  addOne: (bill) =>
    view = new VitaminM.Views.Bills.BillView({model : bill})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(bills: @options.bills.toJSON() ))
    @addAll()

    return this
