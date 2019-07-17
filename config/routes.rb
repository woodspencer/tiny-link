Rails.application.routes.draw do
  resources :links, only: [:index, :new, :create, :show]
  root 'links#index'
  get ':id', to: 'links#goto'
end
