Rails.application.routes.draw do


  # namespace :users do
  #   get 'notas/index'
  #   get 'notas/show'
  #   get 'notas/new'
  #   get 'notas/edit'
  # end
 resources :roles
  resources :articulos
  # namespace :users do
  #   get 'materias/index'
  #   get 'materias/show'
  #   get 'materias/edit'
  #   get 'materias/new'
  # end
  get 'users/indexStudent'
  get 'users/indexDocente'
  devise_for :users

  resources :users

  get 'users/indexStudent'
  get 'inicio/index'



  root to: "articulos#index"

  resources :cursos
  resources :users do
    resources :anotaciones, module: :users
    resources :materias, module: :users
    resources :notas, module: :users
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
