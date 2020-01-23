Rails.application.routes.draw do
  resources :floofs, only: [:show]

  namespace :api do
    namespace :v1 do
      resources :floofs, only: [:show] do
        resources :posts, only: [:index]
      end

      resources :posts, only: [:create]
    end
  end
end
