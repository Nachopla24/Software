Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :asignaturas
  resources :carreras
  resources :universidads
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
