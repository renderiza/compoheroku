Rails.application.routes.draw do
	devise_for :users

	resources :scenes do
		#resources :comments
		member do
			post '/repost' => 'scenes#repost'
			get '/repost' => 'scenes#show_repost' ####
		end # do
	end # do

	resources :boards 

	get ':username' => 'users#show', as: 'user'
	root "scenes#index"
end