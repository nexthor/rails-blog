Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  delete "/articles/:id", to: "articles#delete", as: 'article_delete'
  patch "/articles/:id", to: "articles#update", as: 'article_update'
  get "/articles/:id/edit", to: "articles#edit", as: 'article_edit'
  post "/articles", to: "articles#create", as: 'article_create'
  get "/articles", to: "articles#index", as: :articles
  get "/articles/new", to: "articles#new", as: 'article_new'
  get "/articles/:id", to: "articles#read", as: :article
  # Defines the root path route ("/")
  root "articles#index"
end
