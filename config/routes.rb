Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'flights#index'
get '/index', to: 'flights#index'
get '/booking', to: 'bookings#new'
post '/booking', to: 'bookings#create'
get '/booking/show', to: 'bookings#show'

end
