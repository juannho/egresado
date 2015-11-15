json.array!(@pagos) do |pago|
  json.extract! pago, :id, :monto, :numero_vistas, :empresa_id
  json.url pago_url(pago, format: :json)
end
