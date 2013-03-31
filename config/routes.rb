Cup::Application.routes.draw do

  devise_for :admins

  resources :seo
  resources :branding
  resources :web

  root :to => "home#index"
end
