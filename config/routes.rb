Rails.application.routes.draw do


  root 'home#top'
  get 'about' => 'home#about'

  devise_for :users
  resources :properties do
    resource :favorites, only: [:create, :destroy]
  end

end
