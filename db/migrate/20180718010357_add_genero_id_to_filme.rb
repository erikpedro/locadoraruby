class AddGeneroIdToFilme < ActiveRecord::Migration[5.1]
  def change
    add_column :filmes, :genero_id, :integer
  end
end
