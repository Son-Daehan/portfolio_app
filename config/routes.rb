Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/projects" => "projects#index"
    get "/projects/:id" => "projects#show"
    post "projects" => "projects#create"
    patch "projects/:id" => "projects#update"
    delete "projects/:id" => "projects#destroy"

    get "/educations" => "educations#index"
    get "/educations/:id" => "educations#show"
    post "educations" => "educations#create"
    patch "educations/:id" => "educations#update"
    delete "educations/:id" => "educations#destroy"

    get "/experiences" => "experiences#index"
    get "/experiences/:id" => "experiences#show"
    post "experiences" => "experiences#create"
    patch "experiences/:id" => "experiences#update"
    delete "experiences/:id" => "experiences#destroy"

    post "/users" => "users#create"
  end

  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] } 
end
