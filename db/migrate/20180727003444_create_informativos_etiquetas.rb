class CreateInformativosEtiquetas < ActiveRecord::Migration[5.2]
  def change
    create_table :informativos_etiquetas do |t|
      t.references :informativo, foreign_key: true
      t.references :etiqueta, foreign_key: true

      t.timestamps
    end
  end
end
