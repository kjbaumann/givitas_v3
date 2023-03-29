Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  get "my_events", to: "pages#my_events"

  get "events/:id", to: "pages#event"

  get "events/:id/reservations/new", to: "pages#new_reservation"

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
