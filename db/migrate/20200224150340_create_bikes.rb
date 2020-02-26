class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :brand, null: false
      t.string :model, null: false
      t.integer :price, null: false
      t.integer :speed, null: false
      t.boolean :rented, null: false, default: false
      t.text :address

      t.timestamps
    end
  end
end
