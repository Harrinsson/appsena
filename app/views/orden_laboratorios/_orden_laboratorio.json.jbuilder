json.extract! orden_laboratorio, :id, :paciente_id, :fecha_orden, :codigo_documento, :numero_orden, :created_at, :updated_at
json.url orden_laboratorio_url(orden_laboratorio, format: :json)
