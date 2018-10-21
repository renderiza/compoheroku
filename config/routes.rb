Rails.application.routes.draw do
  devise_for :users
	resources :scenes

	root "scenes#index"
end
