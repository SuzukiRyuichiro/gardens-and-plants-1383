Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]
  end
end

# GET /restaurants/:id/reviews/new -> to display the form
# GET /gardens/:id

# POST /restaurants/:id/reviews -> save the info into the DB
# POST /gardens/:id/plants
