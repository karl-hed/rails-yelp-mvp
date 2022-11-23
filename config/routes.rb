Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    # /restaurants/...
    # collection do
    #   post, to: "restaurants#new"
    # end
    resources :reviews, only: %i[new create]
  end
end
