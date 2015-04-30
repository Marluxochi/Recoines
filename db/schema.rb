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

  create_table "administrador", id: false, force: :cascade do |t|
    t.string "nombre",  limit: 45, null: false
    t.string "usuario", limit: 45, null: false
    t.string "clave",   limit: 45, null: false
  end

  create_table "agenda", primary_key: "idagenda", force: :cascade do |t|
    t.string  "agendacol",            limit: 45
    t.integer "registros_idregistro", limit: 4,  null: false
  end

  add_index "agenda", ["registros_idregistro"], name: "fk_agenda_registros1_idx", using: :btree

  create_table "alumnos", primary_key: "idalumno", force: :cascade do |t|
    t.string  "ALUNOM",    limit: 45
    t.string  "ALUAPP",    limit: 45
    t.string  "apm",       limit: 45
    t.integer "idcarrera", limit: 4
    t.string  "semestre",  limit: 45
    t.integer "idtutor",   limit: 4
    t.string  "correo",    limit: 30
    t.integer "telefono",  limit: 4
    t.string  "pass",      limit: 128
  end

  create_table "carreras", primary_key: "idcarrera", force: :cascade do |t|
    t.string "carrera", limit: 45
    t.string "clave",   limit: 45
  end

  create_table "comentarios", primary_key: "idcomentarios", force: :cascade do |t|
    t.integer "posts_idposts", limit: 4, null: false
  end

  add_index "comentarios", ["posts_idposts"], name: "fk_comentarios_posts1_idx", using: :btree

  create_table "datosautoestima", primary_key: "ALUCTR", force: :cascade do |t|
    t.string "pregunta1",  limit: 11
    t.string "pregunta2",  limit: 11
    t.string "pregunta3",  limit: 11
    t.string "pregunta4",  limit: 11
    t.string "pregunta5",  limit: 11, null: false
    t.string "pregunta6",  limit: 11, null: false
    t.string "pregunta7",  limit: 11, null: false
    t.string "pregunta8",  limit: 11, null: false
    t.string "pregunta9",  limit: 11, null: false
    t.string "pregunta10", limit: 11, null: false
  end

  create_table "dcat1", id: false, force: :cascade do |t|
    t.string  "CAT_CVE",       limit: 7
    t.string  "CAT_DEP",       limit: 7
    t.string  "CAT_NOM",       limit: 40
    t.string  "usuario",       limit: 5
    t.string  "clave",         limit: 64, null: false
    t.string  "emailTutor",    limit: 45, null: false
    t.integer "telefonoTutor", limit: 4,  null: false
    t.integer "noAlumnos",     limit: 4,  null: false
  end

  create_table "ddep1", id: false, force: :cascade do |t|
    t.string "DEP_CVE", limit: 7
    t.string "DEP_NOM", limit: 40
  end

  create_table "departamentos", primary_key: "iddepartamento", force: :cascade do |t|
    t.string "departamento", limit: 45
    t.string "clave",        limit: 45
  end

  create_table "docentes", primary_key: "iddocentes", force: :cascade do |t|
  end

  create_table "evalpit", primary_key: "idtutor", force: :cascade do |t|
    t.integer "1",          limit: 4
    t.integer "2",          limit: 4
    t.integer "3",          limit: 4
    t.integer "4",          limit: 4
    t.integer "5",          limit: 4
    t.integer "6",          limit: 4
    t.integer "7",          limit: 4
    t.integer "8",          limit: 4
    t.integer "9",          limit: 4
    t.integer "10",         limit: 4
    t.integer "11",         limit: 4
    t.integer "total",      limit: 4
    t.string  "comentario", limit: 45
  end

  create_table "evaltutor", primary_key: "idalumno", force: :cascade do |t|
    t.integer "v1",    limit: 4
    t.integer "v2",    limit: 4
    t.integer "v3",    limit: 4
    t.integer "v4",    limit: 4
    t.integer "v5",    limit: 4
    t.integer "total", limit: 4
  end

  create_table "horarios", primary_key: "idhorario", force: :cascade do |t|
    t.integer "registros_idregistro", limit: 4, null: false
  end

  add_index "horarios", ["registros_idregistro"], name: "fk_horarios_registros1_idx", using: :btree

  create_table "horarios_has_materias", id: false, force: :cascade do |t|
    t.integer "horarios_idhorario",  limit: 4, null: false
    t.integer "materias_idmaterias", limit: 4, null: false
  end

  add_index "horarios_has_materias", ["horarios_idhorario"], name: "fk_horarios_has_materias_horarios1_idx", using: :btree
  add_index "horarios_has_materias", ["materias_idmaterias"], name: "fk_horarios_has_materias_materias1_idx", using: :btree

  create_table "kardex", primary_key: "idkardex", force: :cascade do |t|
  end

  create_table "materias", primary_key: "idmaterias", force: :cascade do |t|
    t.string "materiascol", limit: 45
  end

  create_table "mensajes", primary_key: "idmensajes", force: :cascade do |t|
    t.string  "mensaje",              limit: 45
    t.integer "registros_idregistro", limit: 4,  null: false
  end

  add_index "mensajes", ["registros_idregistro"], name: "fk_mensajes_registros1_idx", using: :btree

  create_table "notificaciones", id: false, force: :cascade do |t|
    t.integer "idnotificaciones",     limit: 4, null: false
    t.integer "registros_idregistro", limit: 4, null: false
  end

  add_index "notificaciones", ["registros_idregistro"], name: "fk_notificaciones_registros1_idx", using: :btree

  create_table "posts", primary_key: "idposts", force: :cascade do |t|
    t.string  "post",                 limit: 45
    t.integer "registros_idregistro", limit: 4,  null: false
  end

  add_index "posts", ["registros_idregistro"], name: "fk_posts_registros1_idx", using: :btree

  create_table "registros", primary_key: "idregistro", force: :cascade do |t|
    t.string  "ncontrol",                limit: 45
    t.string  "pass",                    limit: 45
    t.string  "alumnos_ncontrol_alumno", limit: 11, null: false
    t.integer "docentes_iddocentes",     limit: 4,  null: false
    t.integer "kardex_idkardex",         limit: 4,  null: false
  end

  add_index "registros", ["docentes_iddocentes"], name: "fk_registros_docentes1_idx", using: :btree
  add_index "registros", ["kardex_idkardex"], name: "fk_registros_kardex1_idx", using: :btree

  create_table "rubricacomentarios", primary_key: "idrubricacomentarios", force: :cascade do |t|
    t.string  "rubricacomentarioscol",     limit: 45
    t.integer "comentarios_idcomentarios", limit: 4,  null: false
  end

  add_index "rubricacomentarios", ["comentarios_idcomentarios"], name: "fk_rubricacomentarios_comentarios1_idx", using: :btree

  create_table "rubricaporst", primary_key: "idrubrica", force: :cascade do |t|
    t.integer "posts_idposts", limit: 4, null: false
  end

  add_index "rubricaporst", ["posts_idposts"], name: "fk_rubricaporst_posts1_idx", using: :btree

  create_table "tutores", primary_key: "idtutor", force: :cascade do |t|
    t.string  "nombreTutor",   limit: 45
    t.string  "app",           limit: 45
    t.string  "apm",           limit: 45
    t.string  "emailTutor1",   limit: 45
    t.string  "telefonoTutor", limit: 45
    t.string  "usuarioTutor",  limit: 45
    t.string  "claveTutor",    limit: 45
    t.integer "idcarrera",     limit: 4
  end

  add_foreign_key "agenda", "registros", column: "registros_idregistro", primary_key: "idregistro", name: "fk_agenda_registros1"
  add_foreign_key "comentarios", "posts", column: "posts_idposts", primary_key: "idposts", name: "fk_comentarios_posts1"
  add_foreign_key "horarios", "registros", column: "registros_idregistro", primary_key: "idregistro", name: "fk_horarios_registros1"
  add_foreign_key "horarios_has_materias", "horarios", column: "horarios_idhorario", primary_key: "idhorario", name: "fk_horarios_has_materias_horarios1"
  add_foreign_key "horarios_has_materias", "materias", column: "materias_idmaterias", primary_key: "idmaterias", name: "fk_horarios_has_materias_materias1"
  add_foreign_key "mensajes", "registros", column: "registros_idregistro", primary_key: "idregistro", name: "fk_mensajes_registros1"
  add_foreign_key "notificaciones", "registros", column: "registros_idregistro", primary_key: "idregistro", name: "fk_notificaciones_registros1"
  add_foreign_key "posts", "registros", column: "registros_idregistro", primary_key: "idregistro", name: "fk_posts_registros1"
  add_foreign_key "registros", "docentes", column: "docentes_iddocentes", primary_key: "iddocentes", name: "fk_registros_docentes1"
  add_foreign_key "registros", "kardex", column: "kardex_idkardex", primary_key: "idkardex", name: "fk_registros_kardex1"
  add_foreign_key "rubricacomentarios", "comentarios", column: "comentarios_idcomentarios", primary_key: "idcomentarios", name: "fk_rubricacomentarios_comentarios1"
  add_foreign_key "rubricaporst", "posts", column: "posts_idposts", primary_key: "idposts", name: "fk_rubricaporst_posts1"
end
