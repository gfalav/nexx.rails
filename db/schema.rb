# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_27_120553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barrios", force: :cascade do |t|
    t.bigint "localidad_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["localidad_id"], name: "index_barrios_on_localidad_id"
  end

  create_table "calles", force: :cascade do |t|
    t.bigint "barrio_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["barrio_id"], name: "index_calles_on_barrio_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "apellido"
    t.string "apellido2"
    t.string "nombres"
    t.string "documento"
    t.integer "tipodoc_id"
    t.integer "emisordoc_id"
    t.string "contacto"
    t.integer "ciiu_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.bigint "provincia_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["provincia_id"], name: "index_departamentos_on_provincia_id"
  end

  create_table "direcciones", force: :cascade do |t|
    t.bigint "calle_id", null: false
    t.integer "nro"
    t.string "pdepto"
    t.string "acceso"
    t.float "gpslat"
    t.float "gpslong"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["calle_id"], name: "index_direcciones_on_calle_id"
  end

  create_table "enumerados", force: :cascade do |t|
    t.string "radical"
    t.string "codigo"
    t.string "descripcion"
    t.text "detalle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "localidades", force: :cascade do |t|
    t.bigint "municipio_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["municipio_id"], name: "index_localidades_on_municipio_id"
  end

  create_table "municipios", force: :cascade do |t|
    t.bigint "departamento_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["departamento_id"], name: "index_municipios_on_departamento_id"
  end

  create_table "paises", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "provincias", force: :cascade do |t|
    t.bigint "pais_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pais_id"], name: "index_provincias_on_pais_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "barrios", "localidades"
  add_foreign_key "calles", "barrios"
  add_foreign_key "departamentos", "provincias"
  add_foreign_key "direcciones", "calles"
  add_foreign_key "localidades", "municipios"
  add_foreign_key "municipios", "departamentos"
  add_foreign_key "provincias", "paises"
end
