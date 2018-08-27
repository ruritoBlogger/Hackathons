Rails.application.routes.draw do

  get 'main/top' => "main#top"
  get 'main/index' => "main#index"
  post 'user/new' => "user#new"
  post 'user/login' => "user#login"
  post 'user/logout' => "user#logout"
  post 'user/remove' => "user#remove"
  get 'home/top' => "home#top"
  get 'home/new' => "home#new"
  get 'home/login' => "home#login"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
