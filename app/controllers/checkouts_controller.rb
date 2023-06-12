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
            line_items: create_line_items(params),
            mode: 'payment',
            success_url: dev_url + '?success=true',
            cancel_url: dev_url + '?canceled=true',
        })
        render :json => { session: session.url }
    end

	def complete
		payload = request.body.read
		puts payload.inspect
		status 200
	end

	private

	def create_line_items(params)
		arr = []

		params['_json'].each do | param |
			item = {
				price_data: {
					currency: 'aud',
					product_data: {
						name: param['name'],
					},
					unit_amount: (param['price'].to_f * 100).to_i
				},
				quantity: param['quantity'].to_i
			}
			arr << item
		end

		arr
	end

end
