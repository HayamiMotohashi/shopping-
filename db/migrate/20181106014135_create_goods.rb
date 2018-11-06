class CreateGoods < ActiveRecord::Migration[5.2]
  def change
    create_table :goods do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.text :note

      t.timestamps
    end
  end
end
