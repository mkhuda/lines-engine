Lines::Engine.routes.draw do

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'tags/:tag', to: 'articles#index', as: :tag

  resources :sessions
  resources :password_resets,     only: [:new, :create, :edit, :update]

  resources :articles, only: [:index, :show] do
    get 'page/:page', action: :index, on: :collection
  end
  get '/:id', to: 'articles#show', as: 'post_show'

  resources :short_articles, only: [:index, :show], controller: :articles do
    get 'page/:page', action: :index, on: :collection
  end

  # Admin namespace
  namespace :admin do
    resources :articles do
      get :autocomplete_tag_name, on: :collection
      post :toggle_publish#, on: :member
      post :toggle_feature#, on: :member
    end
    resources :authors
    resources :pictures, only: [:create, :update, :destroy]
    resources :users
    root :to => 'articles#index'
  end
  
  get 'administrator/articles', to: 'admin/articles#index'
  
  root :to => 'articles#index'

end
