Rails.application.routes.draw do
  resources :generos
  resources :filmes, only: [:new, :create, :destroy, :edit, :update]
  get  "/filmes/busca" => "filmes#busca", as: :busca_filme
  root "filmes#index"
  
end
