Rails.application.routes.draw do
  root to: "home#show"

  resources :wallets
  resources :projects
end
