class OrderMailer < ApplicationMailer

    def order_confirmation(order_email)
        mail(to: order_email, subject: 'Order Confirmation')
    end
    
end
