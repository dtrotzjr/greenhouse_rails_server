class CreateImageData < ActiveRecord::Migration
  def change
    create_table :image_data do |t|
      t.text :filename
      t.belongs_to :data_point, index: true, foreign_key: true
    end
  end
end
