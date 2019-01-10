Rails.application.routes.draw do
  get 'index/students'
  get 'index/create'
  root to: 'index#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
