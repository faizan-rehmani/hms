Rails.application.routes.draw do
  devise_for :users, controllers: {
        confirmations: 'users/confirmations',
        passwords: 'users/passwords',
        registrations: 'users/registrations',
        unlocks: 'users/unlocks',
        # omniauth_callbacks: 'users/omniauth_callbacks',
        sessions: 'users/sessions'
      }
  root 'welcome#index'
  get '/book_appointment', to: 'appointments#book_appointment', as: 'book_appointment'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
