Kinder::Application.routes.draw do

  root to: 'welcome#index'

  resources :users do
    resources :likes
  end

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
end

# == Route Map (Updated 2013-12-07 14:42)
#
#           root        /                                        welcome#index
#     user_likes GET    /users/:user_id/likes(.:format)          likes#index
#                POST   /users/:user_id/likes(.:format)          likes#create
#  new_user_like GET    /users/:user_id/likes/new(.:format)      likes#new
# edit_user_like GET    /users/:user_id/likes/:id/edit(.:format) likes#edit
#      user_like GET    /users/:user_id/likes/:id(.:format)      likes#show
#                PUT    /users/:user_id/likes/:id(.:format)      likes#update
#                DELETE /users/:user_id/likes/:id(.:format)      likes#destroy
#          users GET    /users(.:format)                         users#index
#                POST   /users(.:format)                         users#create
#       new_user GET    /users/new(.:format)                     users#new
#      edit_user GET    /users/:id/edit(.:format)                users#edit
#           user GET    /users/:id(.:format)                     users#show
#                PUT    /users/:id(.:format)                     users#update
#                DELETE /users/:id(.:format)                     users#destroy
#                       /auth/:provider/callback(.:format)       sessions#create
#   auth_failure        /auth/failure(.:format)                  :controller#:action
#        signout        /signout(.:format)                       sessions#destroy
#
