Rails.application.routes.draw do
	
  root  'home#index'

  post	"/links" => 'links#create'

  get "/short_url" => 'links#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
