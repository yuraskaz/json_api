Rails.application.routes.draw do
  post 'rates/set'

  post 'posts/create'

  get 'posts/index'
  get 'posts/show'

  get 'users/index'
end
