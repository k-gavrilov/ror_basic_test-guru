Rails.application.routes.draw do
  get 'about/', to: 'about#index'
  get 'about/author', to: 'about#author'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
