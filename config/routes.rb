Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :reviews do
    resources :comments
    #nested element of reviews, reinforces hierarchy
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
