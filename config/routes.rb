Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root to: "home#index"
root "home#index"
  namespace :admin do
    root "home#index"
    devise_for :admins, path: "", path_names: { sign_in: "login", sign_out: "logout" },
      skip: [:registrations, :passwords]
  end

  get"logout" => "session#destroy"
end
