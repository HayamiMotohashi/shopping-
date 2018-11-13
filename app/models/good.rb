class Good < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :line_items
  accepts_nested_attributes_for :line_items
	before_destroy :referenced_by_line_item


  private
  def referenced_by_line_item

  	if line_items.empty?
  		return true
  	else
  		errors.add(:base, '品目が存在します。')
  		return false
  	end
  end

end
