Kinder::Application.routes.draw do

  root to: 'welcome#index'

  resources :users do
    resources :likes
  end

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
end
