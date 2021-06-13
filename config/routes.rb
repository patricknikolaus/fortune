Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/fortune", controller: "my_examples", action: "random_fortune"
  get "/lotto", controller: "my_examples", action: "lotto_numbers"
  get "/beer", controller: "my_examples", action: "beer_bottles"
end
