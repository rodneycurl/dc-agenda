Rails.application.routes.draw do
  get 'pages/home'

  root 'events#index'

  resources :events
end
