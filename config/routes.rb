Rails.application.routes.draw do
	devise_for :users
	resources :scenes

	get ':username' => 'users#show', as: 'user'

	root "scenes#index"

end