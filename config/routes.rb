Rails.application.routes.draw do
  resources :attempts, only: [:index, :create, :show]
  resources :questions
  resources :quizzes
  resources :users
  post '/login', to: 'authorization#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
