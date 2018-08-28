Rails.application.routes.draw do

  get 'form/index' => "form#index"
  get 'form/:id' => "form#show"

  get 'main/top' => "main#top"
  get 'main/index' => "main#index"
  get 'main/:id' => "main#show"
  get 'main/:id/edit' => "main#edit"
  get 'main/:id/select' => "main#select"


  post "main/:id/update" => "main#update"
  post "main/:id/addTokyo" => "main#addTokyo"
  post "main/:id/addMinakusa" => "main#addMinakusa"


  post 'user/new' => "user#new"
  post 'user/login' => "user#login"
  post 'user/logout' => "user#logout"
  post 'user/remove' => "user#remove"

  get 'home/top' => "home#top"
  get 'home/new' => "home#new"
  get 'home/login' => "home#login"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
