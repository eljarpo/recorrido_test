Rails.application.routes.draw do
  resources :day_shifts
  resources :shifts
  resources :service_duties
  resources :services
  resources :employees
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
