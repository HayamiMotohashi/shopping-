class LineItem < ApplicationRecord
  belongs_to :order,optional: true
  belongs_to :good
	belongs_to :cart


  def total_price
		good.price * quantity
	end
end
