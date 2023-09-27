class CreateVets < ActiveRecord::Migration[7.0]
  def change
    create_table :vets do |t|
      t.string :nombre
      t.string :apellido
      t.string :especialidad

      t.timestamps
    end
  end
end
