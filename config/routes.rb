Kinder::Application.routes.draw do

  root to: 'welcome#index'

  resources :users do
    resources :likes
  end

end
