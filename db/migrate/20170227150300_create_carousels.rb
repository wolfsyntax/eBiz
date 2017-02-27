class CreateCarousels < ActiveRecord::Migration[5.0]
  def change
    create_table :carousels do |t|
      t.string :image_name
      t.string :link

      t.timestamps
    end
  end
end
