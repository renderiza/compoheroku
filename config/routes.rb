Rails.application.routes.draw do
	resources :scenes

	root "scenes#index"
end
