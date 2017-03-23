class CreateUserData < ActiveRecord::Migration[5.0]
  def change
    create_table :user_data do |t|
      t.integer :age
      t.text :address
      t.string :email_address
      t.string :contact_number
      t.integer :user_id

      t.timestamps
    end
  end
end
