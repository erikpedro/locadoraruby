Rails.application.routes.draw do

  namespace :api do 
    resources :lista_de_filmes
  end

  resources :generos
  resources :filmes, only: [:new, :create, :destroy, :edit, :update]
  get  "/filmes/busca" => "filmes#busca", as: :busca_filme
  root "filmes#index"
  
end
