json.ignore_nil!
json.data_points @data_points do |data_point|
  json.id :id
  json.timestamp :timestamp
  json.synchronize :synchronized

  json.sensor_data  data_point.sensor_data do |sensor_datum|
    json.id sensor_datum.id
    json.sensor_id sensor_datum.sensor_id
    json.temperature sensor_datum.temperature
    json.humidity sensor_datum.humidity
  end

  if data_point.system_datum
    json.system_datum do
      json.id data_point.system_datum.id
      json.soc_temperature data_point.system_datum.soc_temperature
      json.wlan0_link_quality data_point.system_datum.wlan0_link_quality
      json.wlan0_signal_level data_point.system_datum.wlan0_signal_level
      json.storage_total_size data_point.system_datum.storage_total_size
      json.storage_used data_point.system_datum.storage_used
      json.storage_avail data_point.system_datum.storage_avail
    end
  end

  if data_point.image_data && data_point.image_data.count > 0
    json.image_data  data_point.image_data do |image_datum|
      json.id image_datum.id
      json.filename image_datum.filename
    end
  end

end