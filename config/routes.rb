Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      # use Method Get on api/v1/products
      resources :products, only: [:index]
    end
    namespace 'v2' do 
       # use Method Post on api/v2/products
      resources :products, only: [:create]
    end
  end
end
