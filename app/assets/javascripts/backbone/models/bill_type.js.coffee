class VitaminM.Models.BillType extends Backbone.Model
  paramRoot: 'bill_type'

  defaults:
    name: null

class VitaminM.Collections.BillTypesCollection extends Backbone.Collection
  model: VitaminM.Models.BillType
  url: '/bill_types'
