class RemoveSumFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :sum, :integer
  end
end
