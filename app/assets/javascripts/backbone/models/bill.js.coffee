class VitaminM.Models.Bill extends Backbone.Model
  paramRoot: 'bill'

  defaults:
    name: null
    display_name: null
    amount: null
    due_date: null

class VitaminM.Collections.BillsCollection extends Backbone.Collection
  model: VitaminM.Models.Bill
  url: '/bills'
