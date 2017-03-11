class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :product_code
      t.string :phone_number
      t.integer :quantity

      t.timestamps
    end
  end
end
