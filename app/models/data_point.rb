class DataPoint < ActiveRecord::Base
  has_many :sensor_data
  has_many :image_data
end
