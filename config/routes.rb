Rails.application.routes.draw do
  resources :articles do
  collection do
    get 'delete_all'
  end
end
resources :users, only: [:create, :index] do
    collection do
      post 'confirm'
      post 'login'
    end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
  namespace :api do 
    namespace :v1 do 
     resources :articles, only: [:index, :create, :destroy, :update, :show]
    end 
  end 
end
