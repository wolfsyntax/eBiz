Rails.application.routes.draw do
  
  resources :transactions
  resources :products
  get 'index.html'  => "sites#index"
  get '/about'      => "sites#about"
  get 'sites/support'

  get '/new/admin.html' => "users#admin_new"
  get 'balance.info'    => "users#balance"
  
  get 'logout.do'	=> "sessions#destroy", :as => "logout"
  get 'login.do'	=> "sessions#create", :as => "login"

  #delete record
  get '/:id/delete' => "users#destroy"

  get 'signup.php'	=> "users#new", :as => "signup"
  get '/:id/view'	=> "users#view"

  get '/new/promos' => "users#new_promo"
  post '/new/promos.html' => "users#create_promo"

  get '/new/announcement.html' => "sites#a_new"

  get '/dashboard'	=> "users#main"
  root :to => "sites#index"
  


  
  resources :users
  resources :sessions
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
