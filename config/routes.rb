Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :after_signup
end
