class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end
