class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :type
      t.string :name
      t.string :display_name
      t.float :amount
      t.date :due_date

      t.timestamps
    end
  end
end
