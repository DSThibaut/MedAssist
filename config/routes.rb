Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/profil', to: 'dashboards#profil', as: "profil"
  resources :profil do
    collection do
      resources :medical_cares do
        resources :medical_care_medicaments
      end
    end
  end
end
