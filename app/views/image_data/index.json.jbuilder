json.array!(@image_data) do |image_datum|
  json.extract! image_datum, :id, :filename, :data_point_id
  json.url image_datum_url(image_datum, format: :json)
end
