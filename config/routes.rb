Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'

  get '/pages', to:'pages#home'

  resources  :movies do
  	resources :reviews
  end 
end
