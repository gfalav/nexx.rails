json.extract! documento, :id, :file, :descripcion, :created_at, :updated_at
json.url documento_url(documento, format: :json)
