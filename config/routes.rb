Rails.application.routes.draw do

  root 'ideas#index'
  resources :ideas, only: [:index, :create, :edit, :update, :destroy]

  put 'thumbs-up/:id',   to: 'ideas#thumbs_up'
  put 'thumbs-down/:id', to: 'ideas#thumbs_down'
end
