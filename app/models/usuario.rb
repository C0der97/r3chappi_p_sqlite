class Usuario < ApplicationRecord
    has_many :etiquetas_usuarios
    has_many :etiquetas, through: :etiquetas_usuarios

    has_many :comentarios
    has_many :informativos, through: :comentarios
end
