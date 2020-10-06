Rails.application.routes.draw do
 

  namespace :materias do
    get 'users/index'
  end
  namespace :cursos do
    get 'users/index'
  end
  # Ruta por defecto
  root to: 'noticias#index'
 
  devise_for :users
  resources :noticias
  resources :roles
  resources :materias


  # Rutas anidadas
  resources :users do
    resources :anotaciones, module: :users
  end

  resources :cursos do
    resources :users, module: :cursos
  end

  resources :materias do
    resources :users, module: :materias
  end

  



  

end
