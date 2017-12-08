Rails.application.routes.draw do
  devise_for :admins
  get '/make_a_rent/delete', to: 'application#empty_rents', as: "empty_rents"
  get '/make_a_rent/confirm', to: 'application#confirm_rent', as: "confirm_rent"
  get '/make_a_rent(/:slug)', to: 'application#make_a_rent', as: "make_a_rent"
  post '/make_a_rent', to: 'application#remove_rent_item', as: "remove"



  devise_scope :user do
    get "/sign_in" => "devise/sessions#new", as: "user_login"
    get "/sign_in" => "devise/sessions#new", as: "new_user_session"
    post 'sign_in', to: 'devise/sessions#create', as: :user_session
    delete 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration"
    get "/sign_out" => "devise/sessions#destroy"

  end

  devise_for :users, skip: [:sessions]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index'
  resources :movies, param: :slug
  resources :premieres, param: :slug
  post 'movies/new', to: 'movies#create', as: "create_movie"
end
