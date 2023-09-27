class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :nombre
      t.string :especie
      t.string :raza
      t.string :fechanacimiento
      t.string :notas
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
