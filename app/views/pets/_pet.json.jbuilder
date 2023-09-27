json.extract! pet, :id, :nombre, :especie, :raza, :fechanacimiento, :notas, :client_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
