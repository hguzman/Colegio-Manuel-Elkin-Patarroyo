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
  resources :asistencias


  # Rutas anidadas
  resources :users do
    resources :anotaciones, module: :users
    resources :notas, module: :users
  end

  resources :users do
    resources :materias, module: :users
  end

  resources :cursos do
    resources :users, module: :cursos
  end

  resources :materias do
    resources :users, module: :materias
  end

  resources :anotaciones do
    resources :comentarios, module: :anotaciones
  end
  



  

end
