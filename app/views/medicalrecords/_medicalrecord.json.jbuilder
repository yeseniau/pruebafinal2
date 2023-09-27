json.extract! medicalrecord, :id, :diagnostico, :tratamiento, :notas_relevantes, :pet_id, :appoiment_id, :created_at, :updated_at
json.url medicalrecord_url(medicalrecord, format: :json)
