class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :users, optional: true

  def add_items(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end

end
