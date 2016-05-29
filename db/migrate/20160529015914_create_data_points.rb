class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.integer :timestamp, index: true
      t.integer :synchronized, default: 0
    end
  end
end
