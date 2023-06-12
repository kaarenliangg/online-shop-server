Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	put '/addcart/:order_id/:product_id' => 'orders#addcart'
	put '/removecart/:order_id/:product_id' => 'orders#removecart'

	resources :users, :only => [:index, :create, :show] do
		resources :products
		resources :orders
	end

	resources :orders , defaults: { format: :json } do
		resources :products
	end

	resources :products, defaults: { format: :json } do
		resources :orders
	end

	resources :checkouts, :only => [:create]
	
	post '/login' => 'users#login'
	get '/profile' => 'users#profile'
	post '/password/forgot' => 'passwords#forgot'
	post 'password/reset' => 'passwords#reset'
	post '/checkouts/complete' => 'checkouts#complete'
	
end