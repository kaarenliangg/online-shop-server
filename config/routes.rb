Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :users, :only => [:index, :create, :show] do
		resources :products
		resources :orders
	end

	resources :orders do
		resources :products
	end

	resources :products, defaults: { format: :json } do
		resources :orders
	end

	resources :checkouts, :only => [:create]
	
	post '/login' => 'users#login'
	get '/profile' => 'users#profile'
end