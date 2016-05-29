class CreateSensorData < ActiveRecord::Migration
  def change
    create_table :sensor_data do |t|
      t.integer :sensor_id
      t.float :temperature
      t.float :humidity
      t.belongs_to :data_point, index: true, foreign_key: true
    end
  end
end
