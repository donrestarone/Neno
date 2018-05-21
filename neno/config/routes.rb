Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :user, :except => [:destroy] do
  	resources :rides
  end
end
