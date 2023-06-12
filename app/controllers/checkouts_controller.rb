class CheckoutsController < ApplicationController
    skip_before_action :is_authorized, :only => [:create, :complete]
    
    def create
        dev_url = "http://localhost:8000"
        prod_url = ""

        session = Stripe::Checkout::Session.create({
			metadata: {
				order_id: params['metadata']["order_id"]
			},
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
		endpoint_secret = 'whsec_8916bf7946b1aa7e0b539e14643ce2a4d99d5a04ab10a9fedab1abac2c36c54e'
		event = nil

		begin
			sig_header = request.env['HTTP_STRIPE_SIGNATURE']
			payload = request.body.read
			event = Stripe::Webhook.construct_event(payload, sig_header, endpoint_secret)
		rescue JSON::ParserError => e
			render :json => { status: 'Not ok'}, :status => :bad_request
		rescue Stripe::SignatureVerificationError => e
			puts 'bad request'
		end

		puts event.inspect

		# TODO: Post complete logic. Confirmed payment.
		# Update Order status

		render :json => { status: 'Ok'}, :status => :ok
	end

	private

	def create_line_items(params)
		arr = []

		params['lineItem'].each do | param |
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
