Rails.application.routes.draw do
  get 'pages/index'
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
