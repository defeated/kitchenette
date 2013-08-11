class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :restaurant, index: true
      t.datetime :order_at

      t.timestamps
    end
  end
end
