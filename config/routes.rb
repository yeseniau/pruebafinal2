Rails.application.routes.draw do
  resources :medicalrecords
  resources :appointments
  resources :pets
  resources :vets
  resources :clients
  get '/home', to: 'home#index'
  get '/welcome', to: 'welcome#index'

  devise_for :users, controllers:{
	sessions:'user/sessions',
	registrations: 'users/registrations'
}


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
end
