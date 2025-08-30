Rails.application.routes.draw do
  resources :microposts
  resources :users

  get '/', to: 'users#show', defaults: { id: 1 }

  # config/routes.rb
  get "elb-ping", to: proc { [200, { "Content-Type" => "text/plain" }, ["OK"]] }
end