Rails.application.routes.draw do
  resources :advertisements

  resources :likes

  #devise_for :admin_users, ActiveAdmin::Devise.config
 ActiveAdmin.routes(self)
  devise_for :users 

  resources :reviews

  resources :contacts

  resources :things_to_dos

  resources :restaurants

  resources :destinations
  # get 'password_resets/new'
  # get 'sessions/new'
  resources :password_resets

  #resources :sessions

   resources :users

  resources :categories

  resources :items

  resources :descriptions

  resources :images

  get "sign_up" => "users#new", :as => "sign_up"
  post "sessions_create" => "sessions#create"
  get "trekking" => "categories#trekking"
  get "tourism" => "categories#tourisum"
  get "culture" => "categories#culture"
  get "business" => "categories#business"
  get "legal" => "categories#legal"
  get "visa" => "categories#visa"
  get "profile" => "users#profile", :as => "profile"
  get 'cms/:slug', :controller => "contacts", :action => "cms", :as => 'cms'
  post '/search' => 'items#search'
  get '/seed' => 'items#seed'

  get 'details/:slug', :controller => "categories", :action => "list_items", :as =>'list_items_show'
  get 'item/:slug', :controller => "items", :action => "show", :as =>'slugged'
  root :to => 'home#index'

  resource :user, only: [:edit] do
    collection do
      patch 'update_password'
    end
  end
  get 'advertisements/clicked/:id', :controller => "advertisements", :action => "clicked", :as => 'clicked'
end
