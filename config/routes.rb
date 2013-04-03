Cup::Application.routes.draw do

	namespace :admin do
	  resources :brandings
	  resources :websites
	end

  devise_for :admin
  resources :admin

  resources :brandings
  resources :websites

  root :to => "home#index"
end
