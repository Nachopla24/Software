Rails.application.routes.draw do
  resources :posts
  resources :alumnos
  resources :asignaturas
  resources :carreras
  resources :universidads
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
