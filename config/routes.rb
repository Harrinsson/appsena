Rails.application.routes.draw do
  # Devise para usuarios
  #devise_for :user

  # Ruta raíz
  root to: 'sessions#new'

  get "/paciente/home", to: "home#paciente_home", as: :paciente_home

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Otras rutas
  get "home" => "home#welcome", as: :welcome
  resources :orden_laboratorios, only: [:index, :show]

  # Rutas de pacientes
  resources :pacientes

  # Rutas para login/logout y perfil (fuera del bloque resources)
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout

  get '/perfil', to: 'pacientes#perfil', as: :perfil

  # Otras rutas comentadas o adicionales
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
