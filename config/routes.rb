Rails.application.routes.draw do
  get 'home/index'
  get 'user/new'
  post 'user/create'
  get 'user/delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
