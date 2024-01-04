Rails.application.routes.draw do
  get '/availability', to: 'doctors#availability'
  get 'admins/dashboard', to: 'admins#dashboard', as: 'admin_dashboard'
  get 'doctors/dashboard', to: 'doctors#dashboard', as: 'doctor_dashboard'
  get '/patients/dashboard', to: 'patients#dashboard', as: 'patient_dashboard'
  get '/specialization/:id', to: 'patients#specialization'
  get '/doctors/new', to: 'doctors#new'
  get '/doctor/appointments', to: 'doctors#appointment'
  post '/doctors', to: 'doctors#create'
  
  match '/add_programs', to: 'admins#add_programs', via: [:get, :post]
  match '/doctor/set_availability', to: 'doctors#set_availability', via: [:get, :post]
  get '/doctor/availabilities', to: 'doctors#availabilities'
  devise_for :users, controllers: {
        confirmations: 'users/confirmations',
        passwords: 'users/passwords',
        registrations: 'users/registrations',
        unlocks: 'users/unlocks',
        # omniauth_callbacks: 'users/omniauth_callbacks',
        sessions: 'users/sessions'
      }
  root 'welcome#index'
  match '/doctor/appointment/:id/prescribe', to: "doctors#new_prescription", via: [:get, :post]
  match '/book_appointment', to: 'appointments#book_appointment', via: [:get, :post], as: 'book_appointment'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
