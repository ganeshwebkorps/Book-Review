Rails.application.routes.draw do
  get 'reviews/new/:id', to: 'reviews#new', as: :new_reviews
  get 'reviews/all/:id', to: 'reviews#all', as: :all_reviews
  get 'books/book', to: 'books#book', as: :your_books
  resources :books
  resources :reviews, except:[:new, :index]
  
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  devise_for :users
  
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
