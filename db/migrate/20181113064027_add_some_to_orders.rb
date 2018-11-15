class AddSomeToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :address, :string
    add_column :orders, :tel_number, :string
  end
end
