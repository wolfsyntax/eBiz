class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :product_code
      t.string :phone_number
      t.integer :quantity
      t.string :other
      t.integer :user_id
      t.timestamps
    end
  end
end
