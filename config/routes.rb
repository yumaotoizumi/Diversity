Rails.application.routes.draw do
	root :to => 'parkings#top'
	get '/map_request', to: 'parkings#map', as: 'map_request'
#root 'parkings#new'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#root '/parkings/top' => 'parkings#top'
resources :users, only: [:show, :edit, :destroy, :update]
resources :parkings, only: [:top, :new, :create, :index, :show, :edit, :destroy, :update]do
   resources :parking_images, only: [:new, :create, :index, :show]
end
get '/park_list' => 'users#park_list',as: 'park_list'


 resources :parkings do
    resources :reservations
  end
   get '/reservations' => 'reservations#index'
   get '/lend' => 'reservations#lend'

end
