Rails.application.routes.draw do

  get 'usuarios/indexStudent'
  devise_for :usuarios
  
  resources :usuarios
  resources :sedes
 
  get 'usuarios/indexStudent'
 
  
  root to: "inicio#index"

  resources :cursos

  # namespace :docentes do
  #   get 'materias/index'
  #   get 'materias/show'
  #   get 'materias/new'
  #   get 'materias/edit'
  # end

  resources :docentes do
    resources :materias, module: :docentes
  end

  resources :estudiantes do
    resources :anotaciones, module: :estudiantes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
