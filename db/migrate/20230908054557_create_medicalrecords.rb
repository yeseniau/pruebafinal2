class CreateMedicalrecords < ActiveRecord::Migration[7.0]
  def change
    create_table :medicalrecords do |t|
      t.string :diagnostico
      t.string :tratamiento
      t.string :notas_relevantes
      t.references :pet, null: false, foreign_key: true
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
