class DataPoint < ActiveRecord::Base
  has_many :image_data
  has_many :sensor_data
end
