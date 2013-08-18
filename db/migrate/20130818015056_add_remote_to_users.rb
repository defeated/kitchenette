class AddRemoteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :remote, :boolean, null: false, default: 0
  end
end
