Rails.application.routes.draw do

  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"

  get 'urls/new_category' => 'urls#new_category'
  post 'urls/create_category' => 'urls#create_category'
  post 'urls/edit' => "urls#edit"
  post 'urls/delete_category' => 'urls#delete_category'
  post 'urls/delete_url' => 'urls#delete_url'
  get 'urls' => 'urls#index_category'
  get 'urls/:category' => "urls#index_url"
  get 'urls/edit/:id' => "urls#edit_url"
  post 'urls/update/:id' => "urls#update"
  post 'urls/create_url' => "urls#create_url"
  get 'urls/:category/new_url' => "urls#new_url"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/" => "home#top"
  get "/about" => "home#about"
end
