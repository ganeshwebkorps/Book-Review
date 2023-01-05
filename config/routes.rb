Rails.application.routes.draw do
  get 'reviews/new/:id', to: 'reviews#new', as: :new_reviews
  resources :books
  resources :reviews, except:[:new]
  
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  devise_for :users
  
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
