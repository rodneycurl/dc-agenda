Rails.application.routes.draw do
  get 'pages/home'

  root 'pages#home'

  resources :events
end
