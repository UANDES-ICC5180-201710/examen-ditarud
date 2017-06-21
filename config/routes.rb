Rails.application.routes.draw do
  resources :purchases
  resources :games
  root to: 'games#index'


  devise_for :users, path: 'auth'
  devise_scope :user do
    get 'auth', to: 'devise/registrations#new'
  end
  authenticate :user do
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

end
