Rails.application.routes.draw do
  resources :sections
  resources :appeals
  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :subscribers
  resources :comments

  resources :posts do
      resources :comments
      resources :likes
      resources :favorites
  end

  root 'about#index'


  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'

  get 'about/index', to: 'about#index'
  get 'promo/index'
  get 'posts/index'
  get 'comments/index'
  get 'appeals/index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
