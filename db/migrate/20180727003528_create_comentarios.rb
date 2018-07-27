class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.string :comentario
      t.references :informativo, foreign_key: true
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
