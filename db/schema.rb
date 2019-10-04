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

ActiveRecord::Schema.define(version: 2019_10_04_194007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barrios", force: :cascade do |t|
    t.bigint "localidad_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["localidad_id"], name: "index_barrios_on_localidad_id"
  end

  create_table "bonificaciones", force: :cascade do |t|
    t.integer "edesal_id"
    t.integer "linea"
    t.decimal "porcentaje"
    t.date "fdesde"
    t.date "fhasta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "contratos", force: :cascade do |t|
    t.integer "cuenta_id"
    t.string "nombre"
    t.integer "tcuit_id"
    t.integer "tiibb_id"
    t.integer "tperfact_id"
    t.integer "econtrato_id"
    t.date "fcontratoact"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cuentas", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.string "nombre"
    t.integer "dirpostal_id"
    t.integer "tpago_id"
    t.integer "timpagado_id"
    t.integer "tvencimiento_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tenvio_id"
    t.index ["cliente_id"], name: "index_cuentas_on_cliente_id"
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

  create_table "documentos", force: :cascade do |t|
    t.string "file"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "edesals", force: :cascade do |t|
    t.integer "contrato_id"
    t.string "tarifa_id"
    t.integer "potvigente"
    t.date "fpotvigente"
    t.integer "potoriginal"
    t.date "fpotoriginal"
    t.date "fdetectbadcosfi"
    t.integer "csmofijo"
    t.integer "eservicio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enumerados", force: :cascade do |t|
    t.string "radical"
    t.string "codigo"
    t.string "descripcion"
    t.text "detalle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.integer "contrato_id"
    t.integer "periodo"
    t.date "fdesde"
    t.date "fhasta"
    t.date "femision"
    t.date "fvcto"
    t.date "fproxvcto"
    t.date "fupb"
    t.string "nro"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lecturas", force: :cascade do |t|
    t.integer "medidor_id"
    t.integer "tlectura_id"
    t.date "flectura"
    t.integer "tconsumo_id"
    t.decimal "lectura"
    t.decimal "ctelect"
    t.decimal "consumo"
    t.integer "electura_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lineas", force: :cascade do |t|
    t.integer "factura_id"
    t.integer "concepto_id"
    t.decimal "importe"
    t.string "leyenda"
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

  create_table "medidores", force: :cascade do |t|
    t.integer "suministro_id"
    t.integer "tmedidor_id"
    t.string "nromedidor"
    t.integer "marca_id"
    t.string "modelo"
    t.string "corriente"
    t.integer "ttension_id"
    t.integer "tfase_id"
    t.decimal "cteapa"
    t.date "ffabric"
    t.decimal "cperds"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "municipios", force: :cascade do |t|
    t.bigint "departamento_id", null: false
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["departamento_id"], name: "index_municipios_on_departamento_id"
  end

  create_table "otrocargos", force: :cascade do |t|
    t.integer "edesal_id"
    t.integer "concepto_id"
    t.decimal "importe"
    t.date "ffactura"
    t.integer "ecargo_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "suministros", force: :cascade do |t|
    t.string "nombre"
    t.integer "edesal_id"
    t.integer "tmedicion_id"
    t.integer "tconexion_id"
    t.integer "ttension_id"
    t.integer "tfase_id"
    t.integer "direccion_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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
  add_foreign_key "cuentas", "clientes"
  add_foreign_key "departamentos", "provincias"
  add_foreign_key "direcciones", "calles"
  add_foreign_key "localidades", "municipios"
  add_foreign_key "municipios", "departamentos"
  add_foreign_key "provincias", "paises"
end
