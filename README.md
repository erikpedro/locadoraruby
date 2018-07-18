# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

  post "/filmes" => "filmes#create"
  get  "/filmes/new" => "filmes#new"
  delete "/filmes/:id" => "filmes#destroy", as: :filme



          <table class="table table-bordered" >
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Descrição</th>
                    <th>Preço</th>
                    <th>Genero</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <% @filmes.each do |filme| %>
                <tr>
                    <td><%= filme.nome  %></td>
                    <td><%= filme.descricao  %></td>
                    <td><%= filme.preco  %></td>
                    <td><%= filme.nome  %></td>
                    <td>
                        <%= button_to  "Remover", filme, 
                            method: :delete, class: "btn btn-danger", 
                                data: {confirm: "Tem certeza que deseja Remover #{filme.nome}?" }%>
                    </td>
                </tr>
                <% end %>
            </tbody>
        </table>


                        <% @filmes.each do |filme| %>
                <tr> index
                    <td><%= filme.nome  %></td>
                    <td><%= filme.descricao  %></td>
                    <td><%= filme.preco  %></td>
                    <td><%= filme.nome  %></td>
                </tr>
                <% end %>