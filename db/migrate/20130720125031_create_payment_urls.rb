class CreatePaymentUrls < ActiveRecord::Migration
  def change
    create_table :payment_urls do |t|
      t.integer :bill_id
      t.text :url
      t.timestamps
    end
  end
end
