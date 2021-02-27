Rails.application.routes.draw do
  resources :channels
  resources :incidents do
    resources :replies
  end

  root 'incidents#index'

  devise_for :users, controllers: { registrations: 'registrations' }
  
end
