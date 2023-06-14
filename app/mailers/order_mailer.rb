class OrderMailer < ApplicationMailer

    def order_confirmation(order_id)
        @order = Order.find(order_id)
        mail(to: @order.email, subject: 'Pocket Cart Order Confirmation')
    end
    
end
