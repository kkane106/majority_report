Rails.application.routes.draw do

  # Github Callback
  get '/auth/github/callback', to: 'sessions#create'
  # Logout
  get '/logout', to: 'sessions#destroy', as: :logout
  
end
