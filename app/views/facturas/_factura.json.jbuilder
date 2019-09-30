json.extract! factura, :id, :contrato_id, :periodo, :fdesde, :fhasta, :femision, :fvcto, :fproxvcto, :fupb, :nro, :created_at, :updated_at
json.url factura_url(factura, format: :json)
