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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131026091635) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "authentications", :force => true do |t|
    t.string   "uid"
    t.string   "provider"
    t.string   "name"
    t.integer  "user_id"
    t.string   "token"
    t.string   "expired_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.string   "summary"
    t.integer  "created_by"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories_courses", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "course_id"
  end

  add_index "categories_courses", ["course_id", "category_id"], :name => "index_categories_courses_on_course_id_and_category_id"

  create_table "category_courses", :force => true do |t|
    t.integer  "category_id"
    t.integer  "course_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "category_lessons", :force => true do |t|
    t.integer  "category_id"
    t.integer  "lesson_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "course_instructors", :force => true do |t|
    t.integer  "course_id"
    t.integer  "instructor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "course_lessons", :force => true do |t|
    t.integer  "course_id"
    t.integer  "lesson_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.string   "summary"
    t.integer  "created_by"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "chapter"
  end

  create_table "courses_instructors", :id => false, :force => true do |t|
    t.integer "instructor_id"
    t.integer "course_id"
  end

  add_index "courses_instructors", ["instructor_id", "course_id"], :name => "index_courses_instructors_on_instructor_id_and_course_id"

  create_table "courses_lessons", :id => false, :force => true do |t|
    t.integer "lesson_id"
    t.integer "course_id"
  end

  add_index "courses_lessons", ["lesson_id", "course_id"], :name => "index_courses_lessons_on_lesson_id_and_course_id"

  create_table "instructor_lessons", :force => true do |t|
    t.integer  "instructor_id"
    t.integer  "lesson_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "instructors", :force => true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.string   "summary"
    t.integer  "created_by"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "slug"
  end

  add_index "instructors", ["slug"], :name => "index_instructors_on_slug", :unique => true

  create_table "lessons", :force => true do |t|
    t.string   "title"
    t.string   "vimeo_link"
    t.string   "video_length"
    t.string   "summary"
    t.string   "action_steps"
    t.string   "transcript"
    t.string   "faq"
    t.string   "subscription"
    t.integer  "created_by"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "video"
    t.string   "video_file_name"
    t.integer  "video_file_size"
    t.string   "video_content_type"
    t.string   "aasm_state"
    t.integer  "category_id"
    t.integer  "instructor_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "slug"
  end

  add_index "lessons", ["slug"], :name => "index_lessons_on_slug", :unique => true

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sub_categories", :force => true do |t|
    t.string   "title"
    t.string   "sub_title"
    t.string   "summary"
    t.integer  "created_by"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "lesson_viewed",          :default => 0
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "uid"
    t.string   "provider"
    t.string   "auth_token"
    t.string   "auth_expired_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
