class VitaminM.Routers.BillsRouter extends Backbone.Router
  initialize: (options) ->
    @bills = new VitaminM.Collections.BillsCollection()
    @bills.reset options.bills

  routes:
    "new"      : "newBill"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newBill: ->
    @view = new VitaminM.Views.Bills.NewView(collection: @bills)
    $("#bills").html(@view.render().el)

  index: ->
    @view = new VitaminM.Views.Bills.IndexView(bills: @bills)
    $("#bills").html(@view.render().el)

  show: (id) ->
    bill = @bills.get(id)

    @view = new VitaminM.Views.Bills.ShowView(model: bill)
    $("#bills").html(@view.render().el)

  edit: (id) ->
    bill = @bills.get(id)

    @view = new VitaminM.Views.Bills.EditView(model: bill)
    $("#bills").html(@view.render().el)
