class CreateFilmes < ActiveRecord::Migration[5.1]
  def change
    create_table :filmes do |t|
      t.string :nome
      t.text :descricao
      t.decimal :preco

      t.timestamps
    end
  end
end
