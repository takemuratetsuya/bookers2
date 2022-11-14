Rails.application.routes.draw do
  #get 'users/index'
  #get 'users/show'
  #get 'users/edit'
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'
  #get 'homes/top'
  
  devise_for :users
  root to: "homes#top"
  get "homes/about" => "homes#about"
  resources :books, only:[:index, :show, :edit, :create, :update, :destroy]
  resources :users, only:[:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
