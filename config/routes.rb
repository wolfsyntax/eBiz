Rails.application.routes.draw do
  
  get 'index.html'  => "sites#index"
  get '/about'      => "sites#about"
  get 'sites/support'

  
  
  get 'logout.do'	=> "sessions#destroy", :as => "logout"
  get 'login.do'	=> "sessions#create", :as => "login"

  #delete record
  get '/:id/delete' => "users#destroy"

  get 'signup.php'	=> "users#new", :as => "signup"
  get '/:id/view'	=> "users#view"

  get '/dashboard'	=> "users#main"
  root :to => "users#new"
  
  resources :users
  resources :sessions
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
