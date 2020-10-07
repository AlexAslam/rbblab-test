Rails.application.routes.draw do
	root to: 'home#index'
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

  resources :home do 
    collection do 
      get :buy
      get :unbuy
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
