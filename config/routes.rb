Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookings do
    #resources :bikes, only: [:index, :show]
  end

  resources :bikes, only: [:index, :show]
end
