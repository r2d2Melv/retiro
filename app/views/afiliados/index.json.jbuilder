json.array!(@afiliados) do |afiliado|
  json.extract! afiliado, :id, :codigo, :nombre, :apellido, :genero, :edad, :estado_civil, :string, :tipo_id, :no_id, :direccion1, :direccion2, :ciudad, :municipio, :departamento, :pais, :actividad
  json.url afiliado_url(afiliado, format: :json)
end
