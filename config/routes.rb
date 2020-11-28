Rails.application.routes.draw do
  get '/instructs', to: 'static_pages#instructs'
  resources :grades
  resources :enrolls
  get 'sessions/new'
  root 'static_pages#home'
  resources :courses
  resources :users
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :assignments
  resources :grades do
    collection do
      put :update_multiple
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
