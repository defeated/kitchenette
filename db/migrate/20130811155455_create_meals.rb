class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.belongs_to :order
      t.belongs_to :user
      t.string :description, null: false

      t.timestamps
    end

    add_index :meals, [ :user_id, :order_id ], unique: true
  end
end
