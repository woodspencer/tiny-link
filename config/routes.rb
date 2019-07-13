Rails.application.routes.draw do

  root 'links#index'
  get 'links/index'
  get 'links/new'
  get 'links/show'
  get 'links/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
