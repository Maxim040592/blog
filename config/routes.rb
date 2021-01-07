Rails.application.routes.draw do
  
devise_for :users
#get '/' => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root to: "home#index"


get 'terms' => 'pages#terms'
get 'about' => 'pages#about'
resource :contacts, only: [:new, :create], path_names: { :new => ''}  # маршруты только на отображение и отрпавку
resources :articles do
  resources :comments , only: [:create]
end
end
