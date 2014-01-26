Geront::Application.routes.draw do
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users
  root :to => 'visitors#new'
  resources :posts

  get '/vacancies' => 'high_voltage/pages#show', :id => 'vacancies'
  get '/partners' => 'high_voltage/pages#show', :id => 'partners'
  get '/contacts' => 'high_voltage/pages#show', :id => 'contacts'
  get '/about' => 'high_voltage/pages#show', :id => 'about'
  get '/accommodation' => 'high_voltage/pages#show', :id => 'accommodation'
  get '/placement' => 'high_voltage/pages#show', :id => 'placement'
  get '/medservice' => 'high_voltage/pages#show', :id => 'medservice'
  get '/information' => 'high_voltage/pages#show', :id => 'information'
end
