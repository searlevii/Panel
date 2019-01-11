Rails.application.routes.draw do
  get 'instructors/index'
  get 'instructors/create'
  get 'instructors/show'
  get 'instructors/update'
  get 'instructors/destroy'
  get 'students/index'
  get 'students/create'
  get 'students/show'
  get 'students/update'
  get 'students/destroy'
  resources :students
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  get '/cohorts' => 'index#create'
  root to: 'index#index'
  get '/students' => 'students#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
