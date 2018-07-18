class FilmesController < ApplicationController

    def index
       #@filmes = Filme.order( :nome ).limit 10
         @filmes = Filme.joins(:genero)
    end

    def new
        @filme = Filme.new 
        @segunda_lista = Filme.joins(:genero) 
        @generos = Genero.all
     end

     def busca
        @nome = params[:nome]
        @busca_filmes = Filme.where "nome like ?", "%#{@nome}%"
        @generos = Genero.all
     end

     def edit
        id = params[:id]
        @filme = Filme.find(id)
        @segunda_lista = Filme.joins(:genero)
        @generos = Genero.all
         render :new
     end

     def update
         id = params[:id]
         @filme = Filme.find(id)
         valores = params.require(:filme).permit :nome, :descricao, :preco, :genero_id
         if @filme.update valores
         flash[:notice] = "Atualizado com sucesso"
         redirect_to new_filme_url
         else
            @generos = Genero.all
            render :new
         end
     end

    def create
        valores = params.require(:filme).permit :nome, :descricao, :preco, :genero_id
        @filme = Filme.new valores
        @segunda_lista = Filme.joins(:genero)

       if @filme.save
        flash[:notice] = "Cadastrado com sucesso"
        redirect_to new_filme_url
       else
        @generos = Genero.all
        render :new 
        end
    end

    def destroy
       id = params[:id]
        Filme.destroy id
        redirect_to new_filme_url
    end

end
