json.extract! direccion, :id, :calle_id, :nro, :pdepto, :acceso, :gpslat, :gpslong, :created_at, :updated_at
json.url direccion_url(direccion, format: :json)
