json.extract! asignatura, :id, :nombre, :descripcion, :codigo, :created_at, :updated_at
json.url asignatura_url(asignatura, format: :json)
