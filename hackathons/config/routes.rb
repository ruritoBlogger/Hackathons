Rails.application.routes.draw do

  post 'user/new' => "user#new"
  get 'home/top' => "home#top"
  get 'home/new' => "home#new"
  get 'home/login' => "home#login"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
