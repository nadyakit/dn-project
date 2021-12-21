Rails.application.routes.draw do
  resources :categories
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :subscribers

  resources :posts do
      resources :comments
      resources :likes
      resources :favorites
  end

  get 'users', to: 'users#index'
  get 'users/:id' => 'users#show', :as => :user
  delete 'users/:id', to: 'users#destroy'

  get 'about/index'
  get 'promo/index'
  get 'posts/index'

  get 'promo', to: 'promo#index'
  get 'about', to: 'about#index'

  root 'about#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
