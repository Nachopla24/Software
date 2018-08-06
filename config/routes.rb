Rails.application.routes.draw do
  root 'welcome#index'
  resources :universidads 
  resources :asignaturas
  resources :carreras
  devise_for :users
  resources :posts do 
    member do 
      put "like" => "posts#upvote"
    end
  end
end

  
