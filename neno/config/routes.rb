Rails.application.routes.draw do
 

root 'users#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :user, :except => [:destroy] do
  	resources :rides
  end
  resource :sessions, only: [:new, :create, :destroy]
end
