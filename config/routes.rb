Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :update]
    end
  end

  namespace :admin do
    resources :products, except: [:show]
  end

  resources :products, only: [:index, :show]

  namespace :admin do
    resources :stores, except: [:show]
  end
end
