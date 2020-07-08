Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :locations
    end
    namespace :v2 do

      if Rails.env.development?
        mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
      end

      post "/graphql", to: "graphql#execute"
    end
  end
end
