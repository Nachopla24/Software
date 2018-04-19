json.extract! alumno, :id, :nombre, :email, :created_at, :updated_at
json.url alumno_url(alumno, format: :json)
