json.array!(@system_data) do |system_datum|
  json.extract! system_datum, :id, :soc_temperature, :data_point_id
  json.url system_datum_url(system_datum, format: :json)
end
