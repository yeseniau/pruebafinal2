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

ActiveRecord::Schema[7.0].define(version: 2023_09_08_054557) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "fecha"
    t.string "hora"
    t.string "duracion"
    t.string "estado"
    t.bigint "vet_id", null: false
    t.bigint "pet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_appointments_on_pet_id"
    t.index ["vet_id"], name: "index_appointments_on_vet_id"
  end

  create_table "appointments_services", id: false, force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "appointment_id", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "direccion"
    t.string "telefono"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicalrecords", force: :cascade do |t|
    t.string "diagnostico"
    t.string "tratamiento"
    t.string "notas_relevantes"
    t.bigint "pet_id", null: false
    t.bigint "appointment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_medicalrecords_on_appointment_id"
    t.index ["pet_id"], name: "index_medicalrecords_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "nombre"
    t.string "especie"
    t.string "raza"
    t.string "fechanacimiento"
    t.string "notas"
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_pets_on_client_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vets", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "especialidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appointments", "pets"
  add_foreign_key "appointments", "vets"
  add_foreign_key "medicalrecords", "appointments"
  add_foreign_key "medicalrecords", "pets"
  add_foreign_key "pets", "clients"
end
