class NotificationMailer < ApplicationMailer
  def send_confirm_to_user(current_user,current_cart)
    @current_user = current_user
    @current_cart = current_cart
        mail to: @current_user.email,
         subject: '商品の注文完了確認メール'
  end
end
