class VitaminM.Routers.BillTypesRouter extends Backbone.Router
  initialize: (options) ->
    @bill_types = new VitaminM.Collections.BillTypesCollection()
    @bill_types.reset options.billTypes
  routes:
    "new"      : "newBillType"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newBillType: ->
    @view = new VitaminM.Views.BillTypes.NewView(collection: @bill_types)
    $("#bill_types").html(@view.render().el)

  index: ->
    @view = new VitaminM.Views.BillTypes.IndexView(billTypes: @bill_types)
    $("#bill_types").html(@view.render().el)

  show: (id) ->
    bill_type = @bill_types.get(id)

    @view = new VitaminM.Views.BillTypes.ShowView(model: bill_type)
    $("#bill_types").html(@view.render().el)

  edit: (id) ->
    bill_type = @bill_types.get(id)

    @view = new VitaminM.Views.BillTypes.EditView(model: bill_type)
    $("#bill_types").html(@view.render().el)
