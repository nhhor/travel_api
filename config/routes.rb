Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # ?????
  # root to: 'destinations#index'
  # ?????

  resources :destinations do
    resources :reviews
  end

  post 'authenticate', to: 'authentication#authenticate'

end
