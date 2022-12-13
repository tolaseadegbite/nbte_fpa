Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin == true } do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
  # get '/dashboard' => "dashboard#index", :as => :dashboard
  root 'departments#index'

  devise_for :users
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
    # root to: 'devise/sessions#new'
  end
  resources :departments do
    resources :laboratories
    resources :workshops
  end
end