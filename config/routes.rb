LessonsOnBecomingAMillionaire::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  root to: 'home#index'
  devise_for :users, :controllers => {:omniauth_callbacks => 'users/omniauth_callbacks'} do
    ActiveAdmin.routes(self)
    get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  end

  resources :lessons
  resources :courses
  resources :instructors
  resources :sub_categories
  resources :categories

  match "home/dashboard" => 'home#dashboard', :as => "home/dashboard"
  match "pages/:id" => 'pages#show', :as => :page, :format => false

end

