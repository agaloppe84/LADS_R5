Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :dashboard do
    get 'quotations' => 'dashboard#quotations'
    get 'pathfilter' => 'dashboard#pathfilter'
    get 'analytics' => 'dashboard#analytics'
  end

  get 'services' => 'pages#services'
  get 'devis' => 'pages#devis'
  get 'contact' => 'pages#contact'
  get 'photos' => 'pages#photos'
  get 'dashboard' => 'pages#dashboard'
  get 'promotions' => 'pages#promotions'
  get 'quotaconfirm' => 'pages#quotaconfirm'

  resources :types do
    resources :albums
    resources :promos, only: [:new, :create, :edit, :update]
    resources :products do
      resources :infos
      resources :powers
      resources :brands
    end
  end
  resources :quotations, only: [:index, :new, :create, :edit, :update]
  resources :promos, only: [:index]
  get 'confirmation', to: 'quotations#show'



  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
