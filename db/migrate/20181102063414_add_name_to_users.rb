class AddNameToUsers < ActiveRecord::Migration[4.2][4.2][5.2]
  def change
    add_column :users, :name,:string, null: false, default: ""
    add_index :users, :name, unique: true
  end
end
