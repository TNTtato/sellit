Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "products/new", to: "products#new", as: :new_product
  get "products", to: "products#index"
  get "products/:id", to: "products#show", as: :product
end
