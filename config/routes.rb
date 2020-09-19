Rails.application.routes.draw do



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
  end

  resources :materias do
    resources :notas, module: :materias
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
