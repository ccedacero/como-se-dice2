Rails.application.routes.draw do
  resources :results
  resources :user_answers
  resources :answers
  resources :questions
  resources :test_questions
  resources :tests
  resources :phrases
  resources :vocabs
  resources :vowels
  resources :alphabets
  resources :languages
  resources :users, only: [:create]
  post "/login", to "users#login"
  get "/autologin/:id", to "users#autologin"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
