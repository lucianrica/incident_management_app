Rails.application.routes.draw do
  resources :incidents
  root 'incidents#index'

  devise_for :users, controllers: { registrations: 'registrations' }
  
end
