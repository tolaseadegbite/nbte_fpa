Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin == true } do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
  root 'static_pages#home'
  devise_for :users
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
end