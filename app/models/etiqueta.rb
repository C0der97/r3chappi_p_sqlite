class Etiqueta < ApplicationRecord
  belongs_to :administrador

  has_many :etiquetas_usuarios
  has_many :usuarios, through: :etiquetas_usuarios

  has_many :informativos_etiquetas
  has_many :informativos, through: :informativos_etiquetas
end
