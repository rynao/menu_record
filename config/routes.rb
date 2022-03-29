Rails.application.routes.draw do
  devise_for :users
  root to: 'menus#index'
  resources :menus do
    collection do
      get 'search'
    end
  end
  resources :cooking_records
  # resources :ratings, only: [:create, :update]
  post 'ratings', to: 'ratings#update'
end
