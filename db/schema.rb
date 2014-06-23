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

ActiveRecord::Schema.define(version: 20140623141140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendance_registers", force: true do |t|
    t.integer  "training_session_id"
    t.boolean  "attended"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
  end

  add_index "attendance_registers", ["training_session_id"], name: "index_attendance_registers_on_training_session_id", using: :btree

  create_table "attendance_registers_gardeners", id: false, force: true do |t|
    t.integer "attendance_register_id"
    t.integer "gardener_id"
  end

  create_table "attendance_registers_training_sessions", id: false, force: true do |t|
    t.integer "attendance_register_id"
    t.integer "training_session_id"
    t.integer "gardener_id"
  end

  add_index "attendance_registers_training_sessions", ["gardener_id"], name: "index_attendance_registers_training_sessions_on_gardener_id", using: :btree

  create_table "documents", force: true do |t|
    t.integer  "gardener_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachement_file_name"
    t.string   "attachement_content_type"
    t.integer  "attachement_file_size"
    t.datetime "attachement_updated_at"
  end

  add_index "documents", ["gardener_id"], name: "index_documents_on_gardener_id", using: :btree

  create_table "gardeners", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "contact_number"
    t.string   "address"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "id_number"
    t.string   "state"
    t.string   "status"
    t.boolean  "garden_at_home"
    t.string   "garden_location"
    t.integer  "garden_size_l"
    t.integer  "garden_size_w"
    t.string   "maritial_status"
    t.integer  "living_arrangements"
    t.string   "joining_details_referral"
    t.string   "joining_details_referral_qualitative"
    t.string   "joining_details_potential_growth"
    t.string   "education_levels"
    t.string   "education_levels_other"
    t.boolean  "employment"
    t.string   "employment_type"
    t.string   "earning_power"
    t.boolean  "grant"
    t.string   "grant_type"
    t.string   "grant_amount"
    t.string   "access_to_water"
    t.boolean  "gardening_tools"
    t.string   "gardening_tools_qualitative"
    t.boolean  "other_organizations"
    t.string   "other_organizations_qualitative"
    t.boolean  "help_received"
    t.string   "help_received_qualitative"
    t.boolean  "previous_experience"
    t.string   "previous_experience_qualitative"
    t.boolean  "currently_growing"
    t.string   "currently_growing_neg"
    t.string   "grown_veg_usage"
    t.string   "grown_veg_other_qualitative"
    t.string   "veg_bought"
    t.string   "veg_expenditure"
    t.integer  "diet_food_intake"
    t.integer  "diet_veg_intake"
    t.string   "diet_general_health"
    t.string   "diet_health_issues"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
  end

  add_index "gardeners", ["group_id"], name: "index_gardeners_on_group_id", using: :btree

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "area"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
  end

  create_table "identity_documents", force: true do |t|
    t.integer "document_id"
  end

  create_table "support_visits", force: true do |t|
    t.integer  "gardener_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "garden_picture_file_name"
    t.string   "garden_picture_content_type"
    t.integer  "garden_picture_file_size"
    t.datetime "garden_picture_updated_at"
  end

  create_table "training_sessions", force: true do |t|
    t.integer  "attendance_registers_id"
    t.string   "name"
    t.integer  "date_held"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end