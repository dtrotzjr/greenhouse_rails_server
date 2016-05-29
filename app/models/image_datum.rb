class ImageDatum < ActiveRecord::Base
  has_one :data_point
end
