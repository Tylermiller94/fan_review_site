Rails.application.routes.draw do

  root :to => 'movies#home'
  resources :movies do
    resources :reviews
  end
end
