json.extract! client, :id, :nombre, :apellido, :direccion, :telefono, :correo, :created_at, :updated_at
json.url client_url(client, format: :json)
