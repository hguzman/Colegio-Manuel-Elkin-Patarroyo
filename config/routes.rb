Rails.application.routes.draw do


  namespace :asistencias do
    get 'users/index'
  end
resources :asistencias
 resources :roles
  resources :articulos
  get 'users/indexStudent'
  get 'users/indexDocente'
  devise_for :users

  resources :users

  get 'users/indexStudent'
  get 'inicio/index'



  root to: "articulos#index"


  resources :users do
    resources :anotaciones, module: :users
    resources :materias, module: :users
  end

  resources :cursos do
    resources :users, module: :cursos
  end


  resources :asistencias do
    resources :users, module: :asistencias
  end

  resources :materias do
    resources :notas, module: :materias
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
