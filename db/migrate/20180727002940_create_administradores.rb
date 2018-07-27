class CreateAdministradores < ActiveRecord::Migration[5.2]
  def change
    create_table :administradores do |t|
      t.string :correo
      t.string :nombre
      t.string :password

      t.timestamps
    end
  end
end
