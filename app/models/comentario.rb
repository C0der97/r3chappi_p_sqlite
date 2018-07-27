class Comentario < ApplicationRecord
  belongs_to :informativo
  belongs_to :usuario
end
