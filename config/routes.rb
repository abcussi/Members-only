Rails.application.routes.draw do
  get '/signin',     to:'sessions#new'
  post '/login',     to:'sessions#login_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
