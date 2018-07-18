class Api::ListaDeFilmesController < ApplicationController

    def index
        @lista_de_filmes = Filme.all
        render json: @lista_de_filmes, status: :ok
    end


end
