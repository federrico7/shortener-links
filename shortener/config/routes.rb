Rails.application.routes.draw do
  root  'home#index'

  post	"/links" => 'links#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
