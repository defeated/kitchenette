class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :url
      t.string :cuisine
      t.text :notes
    end

    add_index :restaurants, :name, unique: true
  end
end
