Rails.application.routes.draw do
  get 'bikes/index'
  get 'bikes/show'
  get 'bookings/show'
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/edit'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookings do
    resources :bikes, only: [:index, :show]
  end
end
