class CreateSystemData < ActiveRecord::Migration
  def change
    create_table :system_data do |t|
      t.float :soc_temperature
      t.float :wlan0_link_quality
      t.integer :wlan0_signal_level
      t.integer :storage_total_size
      t.integer :storage_used
      t.integer :storage_avail
      t.belongs_to :data_point, index: true, foreign_key: true
    end
  end
end
