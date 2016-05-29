class DataPoint < ActiveRecord::Base
  has_many :image_data
  has_many :sensor_data
  has_one :system_datum
end
