Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :edit, :create, :destroy, :new ]
end
