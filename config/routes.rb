Geront::Application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  
  devise_for :users
  root :to => 'visitors#new'

  resources :posts
end
