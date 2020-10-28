Rails.application.routes.draw do
 

  
 
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
