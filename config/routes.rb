Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :medicaments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get '/profil', to: 'dashboards#profil', as: "profil"
  delete '/appointments/:id', to: 'appointments#destroy', as: 'delete_appointment'
  resources :profil do
    collection do
      resources :medical_cares do
        resources :medical_care_medicaments
      end
    end
  end
  resources :medical_centers, only: [:index] do
    resources :appointments, except: [:show]
  end
  resources :appointments, only: [:index, :new, :create, :edit, :update, :destroy]
end
