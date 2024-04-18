Rails.application.routes.draw do
  namespace :api do
    resources :payments, only: [:index, :show]
  end
end
