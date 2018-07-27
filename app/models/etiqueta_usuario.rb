class EtiquetaUsuario < ApplicationRecord
  belongs_to :usuario
  belongs_to :etiqueta
end
