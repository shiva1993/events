Rails.application.routes.draw do
  get 'events/index'

  devise_for :users
  root 'events#index'

  resources :events, only: [:index, :show] do
    member do
      post 'attend'
      post 'unattend'
    end
  end
end
