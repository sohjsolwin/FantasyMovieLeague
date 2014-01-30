Ruby::Application.routes.draw do
  get "/revenues", to: "revenues#index"
  get "/shares", to: "main#shares"
  get "/shares/:team", to: "main#shares"
  get "/graph/details", to: "graph#details"
  get "/graph/details/:movie", to: "graph#details"
  get "/graph/:type", to: "graph#get_graph"
  get "/graph/:type/:team", to: "graph#get_graph"
  get "/new", to: "new#index"
  get "/:team", to: "main#index"

  post "/save", to: "save#index"
  
  root 'main#index'

end
