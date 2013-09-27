LessonsOnBecomingAMillionaire::Application.routes.draw do
  root to: 'home#index'
  match "home/dashboard" => 'home#dashboard', :as => "home/dashboard"
  match "pages/:id" => 'pages#show', :as => :page, :format => false
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :lessons
  resources :courses
  resources :instructors
  resources :sub_categories
  resources :categories
end

