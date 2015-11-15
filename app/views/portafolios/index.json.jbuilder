json.array!(@portafolios) do |portafolio|
  json.extract! portafolio, :id, :nombre, :archivo, :descripcion, :titulado_id
  json.url portafolio_url(portafolio, format: :json)
end
