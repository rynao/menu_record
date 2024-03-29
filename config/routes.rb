Rails.application.routes.draw do
  devise_for :users
  root to: 'menus#index'
  resources :menus do
    collection do
      get 'search'
      get 'sort'
    end
  end
  resources :cooking_records
  post 'ratings', to: 'ratings#update'
end
