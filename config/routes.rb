Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :medicaments
  get 'medicament/:id/increment', to: 'medicaments#increment', as: 'increment_medicament'
  get 'medicament/:id/decrement', to: 'medicaments#decrement', as: 'decrement_medicament'
  get '/profil', to: 'dashboards#profil', as: "profil"
  delete '/profil/medical_cares/:id', to: 'medical_cares#destroy', as: 'delete_medical_care'
  delete '/appointments/:id', to: 'appointments#destroy', as: 'delete_appointment'
  delete '/profil/medical_cares/:medical_care_id/medical_care_medicaments/:id', to: 'medical_care_medicaments#destroy', as: 'delete_medical_care_medicament'
  resources :profil do
    collection do
      resources :medical_cares do
        resources :medical_care_medicaments do
          get :taken
        end
      end
    end
  end
  resources :medical_centers, only: [:index] do
    resources :appointments, except: [:show]
  end
  resources :appointments, only: [:index, :new, :create, :edit, :update, :destroy]
end
