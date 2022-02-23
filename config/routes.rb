Rails.application.routes.draw do
  post 'links/create', to: 'links#create'
end
