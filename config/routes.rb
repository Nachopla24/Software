Rails.application.routes.draw do
  devise_for :users
  resources :asignaturas
  resources :carreras
  resources :universidads
  root 'welcome#index'
  resources :posts do 
    member do 
      put "like" => "posts#upvote"
    end
  end
end

  
