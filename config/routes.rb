Rails.application.routes.draw do
  resources :posts do
  	resources :rates ,only:[:create]
  end
end
