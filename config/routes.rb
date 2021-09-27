Rails.application.routes.draw do
  resources :reviews do
    collection { post :import }
    collection { get :sort }
  end
  resources :movies do 
    collection { post :import }
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
