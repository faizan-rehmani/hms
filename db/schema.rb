# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_04_114003) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "doctor_id", null: false
    t.integer "status", default: 0
    t.bigint "slot_id", null: false
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["slot_id"], name: "index_appointments_on_slot_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.string "start_time"
    t.string "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_availabilities_on_doctor_id"
  end

  create_table "available_slots", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "slot_id", null: false
    t.bigint "availability_id", null: false
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["availability_id"], name: "index_available_slots_on_availability_id"
    t.index ["doctor_id", "slot_id"], name: "index_available_slots_on_doctor_id_and_slot_id", unique: true
    t.index ["doctor_id"], name: "index_available_slots_on_doctor_id"
    t.index ["slot_id"], name: "index_available_slots_on_slot_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "qualification"
    t.integer "work_experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "specialization_id", null: false
    t.index ["specialization_id"], name: "index_doctors_on_specialization_id"
  end

  create_table "medicine_prescriptions", force: :cascade do |t|
    t.bigint "medicine_id", null: false
    t.bigint "prescription_id", null: false
    t.integer "duration"
    t.string "when_to_take"
    t.boolean "before_meal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicine_id"], name: "index_medicine_prescriptions_on_medicine_id"
    t.index ["prescription_id"], name: "index_medicine_prescriptions_on_prescription_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.string "manufacturer"
    t.integer "form"
    t.datetime "mfd"
    t.datetime "expiry"
    t.integer "mg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.text "instruction"
    t.integer "duration"
    t.bigint "appointment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_prescriptions_on_appointment_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "specialization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specialization_id"], name: "index_programs_on_specialization_id"
  end

  create_table "slots", force: :cascade do |t|
    t.string "start_time"
    t.string "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specializations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "shift"
    t.string "post"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "gender"
    t.datetime "dob"
    t.integer "role_id"
    t.string "role_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "appointments", "slots"
  add_foreign_key "availabilities", "doctors"
  add_foreign_key "available_slots", "availabilities"
  add_foreign_key "available_slots", "doctors"
  add_foreign_key "available_slots", "slots"
  add_foreign_key "doctors", "specializations"
  add_foreign_key "medicine_prescriptions", "medicines"
  add_foreign_key "medicine_prescriptions", "prescriptions"
  add_foreign_key "prescriptions", "appointments"
  add_foreign_key "programs", "specializations"
end
