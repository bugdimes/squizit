Rails.application.routes.draw do

  get '/s/:slug', to: 'links#show'
  post 'links/create', to: 'links#create'


end
