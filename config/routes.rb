Rails.application.routes.draw do
  get "/animals", to: "animals#index"
  post "/animals", to: "animals#create"
  get "/animals/:id", to: "animals#show"
  put "/animals/:id", to: "animals#update"
  delete "/animals/:id", to: "animals#destroy"
end
