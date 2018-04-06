json.extract! carrera, :id, :nombre, :descripcion, :codigo, :created_at, :updated_at
json.url carrera_url(carrera, format: :json)
