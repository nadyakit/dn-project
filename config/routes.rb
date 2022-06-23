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

  root 'posts#index'

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'

  get 'about/index', to: 'about#index'
  get 'promo/index', to: 'promo#index'
  get 'posts/index', to: 'posts#index'
  get 'comments/index', to: 'comments#index'
  get 'appeals/index', to: 'appeals#index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
