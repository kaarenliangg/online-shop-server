class CheckoutsController < ApplicationController
    skip_before_action :is_authorized, :only => [:create]
    
    def create
        dev_url = "http://localhost:8000"
        prod_url = ""

        session = Stripe::Checkout::Session.create({
            line_items: [{
              # Provide the exact Price ID (e.g. pr_1234) of the product you want to sell
              price: 'price_1NGXOkHK0jF5AwAIDHPHUyTw',
              quantity: 1,
            }],
            mode: 'payment',
            success_url: dev_url + '?success=true',
            cancel_url: dev_url + '?canceled=true',
        })
        render :json => { session: session.url }
        # redirect_to session.url
    end
end
