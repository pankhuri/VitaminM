class RenameTypeToBillTypeId < ActiveRecord::Migration
	def self.up
		rename_column :bills, :type, :bill_type_id
	end

	def self.down
		change_column  :bills,  :bill_type_id, :type
	end
end
