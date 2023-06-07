Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :medical_centers, only: [:index] do
    resources :appointments, except: [:show]
  end
  resources :appointments, only: [:index, :new, :create, :edit, :update, :destroy]
end
