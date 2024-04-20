# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'publics#home'
  get 'pages/index'
  get 'publics/about'
  get 'publics/programme'
  get 'publics/contact'
  resources :grades
  resources :enrollements
  resources :contents
  resources :lessons
  resources :course_modules
  resources :courses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
