Rails.application.routes.draw do
  # devise_for :controllers
  devise_for  :users, :controllers => {:registrations => "users/registrations"}

  resources :jobs

  resources :job_applications
  get "/search-results" => 'jobs#searched'
  get "/autocomplete" => "jobs#autocomplete"
  # devise_for :employers, :controllers => {:registrations => "users/registrations"}
  # devise_for :employees
  resources :employers
  resources :employees

  root "static#homepage"

  post '/job_applications/:id', to: 'job_applications#hire', as: 'hire'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
