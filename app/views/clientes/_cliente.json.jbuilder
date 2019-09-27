json.extract! cliente, :id, :apellido, :apellido2, :nombres, :documento, :tipodoc_id, :emisordoc_id, :contacto, :ciiu_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
