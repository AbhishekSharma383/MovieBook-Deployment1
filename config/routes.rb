Rails.application.routes.draw do
  devise_for :users
  root 'movies#index'

  resources :showtimes

  resources :seats 
      
  post 'update_seats_statuses', to: 'seats#update_seats_statuses'



  resources :venues do
    member do
      delete 'delete', to: 'venues#destroy'
    end
  end

  resources :movies do
    member do
      delete 'delete', to: 'movies#destroy'
      get :book_show
      get :book_seat
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
