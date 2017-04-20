Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :restaurants, only: [:index, :new, :create, :show, :destroy] do
    resources :reviews, only: [:index, :new, :create]
  end


# show all restaurants
# get "restaurants", to: "restaurants#index", as: "restaurants"

# # add new restaurant
# get "restaurants/new", to: "restaurants#new", as: "add_restaurant"

# # create resutaurant
# post "restaurants", to: "restaurants#create"

# # show a single restaurant
# get "restaurants/:id", to: "restaurants#show", as: "restaurant"

# # add a review
# get "restaurants/:restaurant_id/reviews/new", to: "reviews#show"
# post "restaurants/:restaurant_id/reviews", to: "reviews#index"

  end
