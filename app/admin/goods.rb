ActiveAdmin.register Good do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :name, :image, :price, :note, line_items_attributes: [:good_id, :name]

index do
  selectable_column
  column :image do |good|
    image_tag(good.image.url)
  end
  column "商品名" ,:name
  column "値段" ,:price
  column "商品説明 " ,:note
  actions

end

#   column :foo do
#   link_to('foo',root_path)
# end

action_item only: :index do
  link_to('ホーム画面に戻る',root_path)
end


end
