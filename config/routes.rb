Rails.application.routes.draw do
	root to: 'houses#index'
  devise_for :users
  resources :commercial_units do 
  	get :buy
  	get :unbuy
  end
  resources :complex_buildings do 
  	get :buy
  	get :unbuy
  end
  resources :houses do 
  	get :buy
  	get :unbuy
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
