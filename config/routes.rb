Rails.application.routes.draw do
  resources :abouts
  resources :viewer_accesses
  resources :profiles do
    resources :accessers
    resources :reviews
  end
  devise_for :users, :path_prefix => 'd'

  get 'users/index'
  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id',     to: 'users#show',       via: 'get'

  resources :users, :only =>[:show]
  # do
  #   resources :reviews
  # end

  #devise_for :users
  #og, maybe add back!
  get 'welcome/index'

    resources :reviews do
      resources :comments
      #nested element of reviews, reinforces hierarchy
    end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
