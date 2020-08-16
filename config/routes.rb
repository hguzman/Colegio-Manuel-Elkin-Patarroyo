Rails.application.routes.draw do

  
  get 'usuarios/indexStudent'
  devise_for :usuarios
  
  resources :usuarios
 
  get 'usuarios/indexStudent'
 
  
  root to: "inicio#index"

  resources :cursos
  resources :usuarios do
    resources :anotaciones, module: :usuarios
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
