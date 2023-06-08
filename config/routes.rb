Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :users, :only => [:index, :create]

	resources :orders do
		resources :products, shallow: true
	end

	resources :products, defaults: { format: :json }, shallow: true do
		resources :orders
	end
	
	post '/login' => 'users#login'
	get '/profile' => 'users#profile'
end
