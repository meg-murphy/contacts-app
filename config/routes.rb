Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "contacts#contact_home"


  get "/contacts", to: "contacts#index"
  get "/contacts/johns", to: "contacts#johns"

  get "/contacts/new", to: "contacts#new"
  post "/contacts", to: "contacts#create"

  get "/contacts/:id/edit", to: "contacts#edit"
  patch "/contacts/:id", to: "contacts#update"

  get "/contacts/:id", to: "contacts#show"

  delete "/contacts/:id", to: "contacts#destroy"

end
