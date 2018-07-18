class Filme < ApplicationRecord

    belongs_to :genero
    validates :preco, presence: true


end
