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
  get 'confirmation', to: 'quotations#confirmation'

  resources :promos, only: [:index]




  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
