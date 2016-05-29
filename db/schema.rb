# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160529020220) do

  create_table "data_points", force: :cascade do |t|
    t.integer "timestamp"
    t.integer "synchronized", default: 0
  end

  add_index "data_points", ["timestamp"], name: "index_data_points_on_timestamp"

  create_table "image_data", force: :cascade do |t|
    t.text    "filename"
    t.integer "data_point_id"
  end

  add_index "image_data", ["data_point_id"], name: "index_image_data_on_data_point_id"

  create_table "sensor_data", force: :cascade do |t|
    t.integer "sensor_id"
    t.float   "temperature"
    t.float   "humidity"
    t.integer "data_point_id"
  end

  add_index "sensor_data", ["data_point_id"], name: "index_sensor_data_on_data_point_id"

end
