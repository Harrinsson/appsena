json.extract! paciente, :id, :tipoid, :identificacion, :nombre, :fechanacido, :sexo, :direccion, :telefono, :correo, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
