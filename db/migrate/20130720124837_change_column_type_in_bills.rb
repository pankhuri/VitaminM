class ChangeColumnTypeInBills < ActiveRecord::Migration
	def up
		change_column :bills, :bill_type_id, :integer
	end

	def down
		change_column :bills, :bill_type_id, :string
	end
end
