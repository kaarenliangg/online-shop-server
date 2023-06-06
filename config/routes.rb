Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :users, :only => [:index, :create]
	resources :products, defaults: { format: :json }

	post '/login' => 'users#login'
	get '/profile' => 'users#profile'
end
