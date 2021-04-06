Rails.application.routes.draw do

  get 'relationships/create'
  get 'relationships/destroy'
  get 'book_comments/create'
  get 'book_comments/destroy'
  devise_for :users

  root to: "homes#top"
  get "home/about" => 'homes#about'

  resources :users

  resources :books do
    resource :favorites,only:[:create,:destroy]
    resources :book_comments,only:[:create,:destroy]
  end

end
