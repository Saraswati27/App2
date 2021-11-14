Rails.application.routes.draw do
  resources :cars
  get 'cars/index'
  get 'post/new'

  get 'post/update'

  get 'post/create'

  get 'post/edit'

  get 'post/show'

  root 'post#index'

  get 'post/delete'

  get 'book/list'

  get 'book/show'

  get 'book/edit'

  get 'book/update'

  get 'book/delete'

  get 'book/new'

  get 'book/create'

  

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#root 'hello#index'
end
