json.array!(@recomendaciones) do |recomendacion|
  json.extract! recomendacion, :id, :nombre, :cargo, :detalle, :titulado_id
  json.url recomendacion_url(recomendacion, format: :json)
end
