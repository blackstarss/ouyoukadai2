Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }
  
  resources :users,only: [:show,:index,:edit,:update]
  resources :books

  root 'homes#top'
  get 'home/about' => 'homes#about'

end