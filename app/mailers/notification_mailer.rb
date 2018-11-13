class NotificationMailer < ApplicationMailer
  def send_confirm_to_user(current_user,current_cart)
    @current_user = current_user
    @current_cart = current_cart
        mail to: @current_user.email,
         subject: '現在カートに入っている商品'
  end
end
