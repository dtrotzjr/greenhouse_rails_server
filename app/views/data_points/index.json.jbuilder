json.array!(@data_points) do |data_point|
  json.ignore_nil!
  json.extract! data_point, :id, :timestamp, :synchronized
  json.sensor_data  data_point.sensor_data do |sensor_datum|
    json.id sensor_datum.id
    json.sensor_id sensor_datum.sensor_id
    json.temperature = sensor_datum.temperature
    json.humidity = sensor_datum.humidity
  end
  json.image_data  data_point.image_data do |image_datum|
    json.id image_datum.id
    json.filename image_datum.filename
  end
end
