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

ActiveRecord::Schema.define(version: 0) do

  create_table "data_point", force: :cascade do |t|
    t.integer "timestamp"
    t.integer "synchronized", default: 0
  end

  add_index "data_point", ["timestamp"], name: "data_point_timestamp_idx"

  create_table "data_point_sensor_data", force: :cascade do |t|
    t.integer "data_point_id"
    t.integer "sensor_data_id"
  end

  add_index "data_point_sensor_data", ["data_point_id"], name: "data_point_sensor_data_lhs_idx"
  add_index "data_point_sensor_data", ["sensor_data_id"], name: "data_point_sensor_data_rhs_idx"

  create_table "image_data", force: :cascade do |t|
    t.text    "filename"
    t.integer "data_point_id"
  end

  create_table "sensor_data", force: :cascade do |t|
    t.integer "sensor_id"
    t.float "temperature_c"
    t.float "humidity"
    t.integer "data_point_id"
  end

end
