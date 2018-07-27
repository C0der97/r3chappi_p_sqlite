class CreateEtiquetasUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :etiquetas_usuarios do |t|
      t.references :usuario, foreign_key: true
      t.references :etiqueta, foreign_key: true

      t.timestamps
    end
  end
end
