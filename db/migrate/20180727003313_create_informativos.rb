class CreateInformativos < ActiveRecord::Migration[5.2]
  def change
    create_table :informativos do |t|
      t.string :titulo
      t.string :imagen
      t.string :descripcion
      t.string :vistas
      t.string :compartido
      t.references :editor, foreign_key: true

      t.timestamps
    end
  end
end
