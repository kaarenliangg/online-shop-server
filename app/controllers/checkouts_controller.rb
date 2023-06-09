class CheckoutsController < ApplicationController
    skip_before_action :is_authorized, :only => [:create]
    
    # Stripe.api_key = 'sk_test_51NGEqeCGX7XPMDHf8F2hkgKWMTldXx5PIUVuMm35dB30PQ1HnEWaKxVAZ0dttDRZKV0oxrK9CrIWu7atJe6Oa0yp00Vagwoyqp'

    def create
        dev_url = "http://localhost:8000"
        prod_url = ""

        session = Stripe::Checkout::Session.create({
          shipping_address_collection: {allowed_countries: ['AU']},
          shipping_options: [
            {
              shipping_rate_data: {
                type: 'fixed_amount',
                fixed_amount: {
                  amount: 0,
                  currency: 'aud',
                },
                display_name: 'Free shipping',
                delivery_estimate: {
                  minimum: {
                    unit: 'business_day',
                    value: 5,
                  },
                  maximum: {
                    unit: 'business_day',
                    value: 7,
                  },
                },
              },
            },
            {
              shipping_rate_data: {
                type: 'fixed_amount',
                fixed_amount: {
                  amount: 1500,
                  currency: 'aud',
                },
                display_name: 'Next day air',
                delivery_estimate: {
                  minimum: {
                    unit: 'business_day',
                    value: 1,
                  },
                  maximum: {
                    unit: 'business_day',
                    value: 1,
                  },
                },
              },
            },
          ],
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
