# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_211_219_164_621) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'appointments', force: :cascade do |t|
    t.text 'recipe'
    t.bigint 'visit_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'doc_id'
    t.bigint 'receiver_id'
    t.index ['doc_id'], name: 'index_appointments_on_doc_id'
    t.index ['receiver_id'], name: 'index_appointments_on_receiver_id'
    t.index ['visit_id'], name: 'index_appointments_on_visit_id'
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.string 'fullname'
    t.string 'mobile_no'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'role_id'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
    t.index ['role_id'], name: 'index_users_on_role_id'
  end

  create_table 'visits', force: :cascade do |t|
    t.date 'date'
    t.time 'time'
    t.string 'problem'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'creator_id'
    t.bigint 'doc_id'
    t.index ['creator_id'], name: 'index_visits_on_creator_id'
    t.index ['doc_id'], name: 'index_visits_on_doc_id'
  end

  add_foreign_key 'appointments', 'users', column: 'doc_id'
  add_foreign_key 'appointments', 'users', column: 'receiver_id'
  add_foreign_key 'appointments', 'visits'
  add_foreign_key 'users', 'roles'
  add_foreign_key 'visits', 'users', column: 'creator_id'
  add_foreign_key 'visits', 'users', column: 'doc_id'
end
