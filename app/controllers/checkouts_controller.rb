class CheckoutsController < ApplicationController
    skip_before_action :is_authorized, :only => [:create]
    
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
				price_data: {
					currency: 'aud',
					product_data: {
						name: Product.first.product_name
					},
					unit_amount: (Product.first.retail_price * 100).to_i
              	},
				quantity: 1
            }],
            mode: 'payment',
            success_url: dev_url + '?success=true',
            cancel_url: dev_url + '?canceled=true',
        })
        render :json => { session: session.url }
        # redirect_to session.url
    end
end
