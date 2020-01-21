Rails.application.routes.draw do
  resources :students #only: [:index, :new, :create, :edit, :show, :udpate]
  resources :school_classes #only: [:index, :new, :create, :edit, :show, :udpate]
end
