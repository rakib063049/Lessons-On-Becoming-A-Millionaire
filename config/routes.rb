LessonsOnBecomingAMillionaire::Application.routes.draw do
  root to: 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :lessons
  resources :courses
  resources :instructors
  resources :sub_categories
  resources :categories
end

