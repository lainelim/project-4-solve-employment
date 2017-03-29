Rails.application.routes.draw do

  devise_for :controllers
  resources :job_applications

  devise_for  :users, :controllers => {:registrations => "users/registrations"}
  resources :jobs
  # devise_for :employers, :controllers => {:registrations => "users/registrations"}
  # devise_for :employees
  resources :employers
  resources :employees
  root "static#homepage"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end