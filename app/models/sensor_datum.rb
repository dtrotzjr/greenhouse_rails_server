class SensorDatum < ActiveRecord::Base
  has_one :data_point
end
