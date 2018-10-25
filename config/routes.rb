Rails.application.routes.draw do
	devise_for :users

	resources :boards 

	resources :scenes do
		#resources :comments
		member do
			post '/repost' => 'scenes#repost'
		end
		
	end

	get ':username' => 'users#show', as: 'user'

	root "scenes#index"
end