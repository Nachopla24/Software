json.extract! post, :id, :alumno_id, :titulo, :descripcion, :likes, :created_at, :updated_at
json.url post_url(post, format: :json)
