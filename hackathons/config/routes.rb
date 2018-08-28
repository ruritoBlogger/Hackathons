Rails.application.routes.draw do

  get 'post/new'
  get 'form/index' => "form#index"
  get 'form/info' => "form#info"
  get 'form/apply' => "form#apply"

  post 'form/add' => "form#add"
  post 'form/:id/create' => "form#create"
  post 'form/:id/select/delete' => "form#delete"

  get 'post/:id' => "post#show"
  get 'post/:id/apply2' => "post#apply2"

  post 'post/:id/dummy' => "post#dummy"
  post 'post/:id/makeTokyo' => "post#makeTokyo"
  post 'post/:id/makeMinakusa' => "post#makeMinakusa"

  get 'main/top' => "main#top"
  get 'main/index' => "main#index"
  get 'main/:id' => "main#show"
  get 'main/:id/edit' => "main#edit"
  get 'main/:id/edit2' => "main#edit2"
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
