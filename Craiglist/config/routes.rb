Rails.application.routes.draw do
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  root 'categories#index'

  #Session routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  #User routes
  get 'signup' => 'users#new'

  resources :users, except: [:index]

  resources :categories, only: [:index, :show] do
    resources :items
  end

end
