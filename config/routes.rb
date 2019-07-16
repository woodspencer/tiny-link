Rails.application.routes.draw do

  resources :links, only: [:index, :new, :goto, :create, :show]
  root 'links#index'
  get ':id', to: 'links#goto'
end
