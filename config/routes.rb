Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'list', to: 'tasks#list', as: :list
  get 'list/:id', to: 'tasks#details', as: :details
  get 'new', to: 'tasks#new', as: :new
  post 'new', to: 'tasks#create', as: :create
end
