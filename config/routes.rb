Rails.application.routes.draw do
  #para asignar y remover una persona de un proyecto
  resources :projects do
    post '/workers', to: 'projects#add_worker', as:'add_worker' #añade un trabajador a un proyecto
    delete '/workers/:id', to: 'projects#remove_worker', as:'remove_worker' 
  end
  resources :workers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
