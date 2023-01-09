Rails.application.routes.draw do
 
  resources :books do
      collection do
        get 'book', to: 'books#book', as: :your_books
      end
    end
  
  resources :reviews, except:[:new, :index] do
    member do
      get 'new/:id', to: 'reviews#new', as: :new_reviews
      get 'all/:id', to: 'reviews#all', as: :all_reviews
    end
  end

  resources :likes, only: [:create, :destroy]
  
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  devise_for :users
  
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
