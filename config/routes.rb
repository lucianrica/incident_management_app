Rails.application.routes.draw do
  resources :channels
  resources :incidents do
    resources :replies
  end

  root 'home#index'

  devise_for :users, controllers: { registrations: 'registrations' }
  
end
