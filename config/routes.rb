Rails.application.routes.draw do
  resources :alumnos
  resources :asignaturas
  resources :carreras
  resources :departamentos
  resources :universidads
  resources :posts
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
