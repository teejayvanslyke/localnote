Rails.application.routes.draw do
  resources :notes
  root 'notes#show'
end
