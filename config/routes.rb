Rails.application.routes.draw do
	root :to => 'parkings#top'
#root 'parkings#new'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#root '/parkings/top' => 'parkings#top'
resources :users, only: [:show, :edit, :update]
resources :parkings, only: [:top, :new, :create, :index, :show, :edit, :destroy, :update]
get '/park_list' => 'users#park_list',as: 'park_list'
end
