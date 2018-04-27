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

ActiveRecord::Schema.define(version: 20180427064241) do

  create_table "accessers", force: :cascade do |t|
    t.boolean "access_granted"
    t.integer "viewing_id"
    t.integer "viewable_profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "profile_id"
    t.index ["viewable_profile"], name: "index_accessers_on_viewable_profile"
    t.index ["viewing_id"], name: "index_accessers_on_viewing_id"
  end

  create_table "accesses", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "user_id"
    t.boolean "access_given"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_id"], name: "index_comments_on_review_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.boolean "access_allowed"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "numOfThing"
    t.string "date"
    t.boolean "notice"
    t.boolean "rentLeft"
    t.decimal "rentLeftAmount"
    t.boolean "late"
    t.decimal "lateThreeDayNum"
    t.decimal "latePaymentNum"
    t.boolean "nSF"
    t.decimal "nsfNum"
    t.boolean "damages"
    t.string "damagesDescription"
    t.boolean "complaintsFiled"
    t.string "complaintDescription"
    t.boolean "undocumentedHousemates"
    t.boolean "coTenants"
    t.boolean "rentalStatus"
    t.boolean "evicted"
    t.boolean "rentAgain"
    t.boolean "depositRefund"
    t.boolean "pets"
    t.string "petType"
    t.decimal "rentAmount"
    t.boolean "lease"
    t.string "tenantNotes"
    t.integer "user_id"
    t.integer "profile_id"
    t.index ["profile_id"], name: "index_reviews_on_profile_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "username"
    t.string "firstName"
    t.string "lastName"
    t.boolean "admin", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "viewer_accesses", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "user_id"
    t.boolean "access_given"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "viewing_id"
    t.integer "viewable_profile"
  end

  create_table "viewers", force: :cascade do |t|
    t.boolean "pageAccess"
    t.integer "user_id"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_viewers_on_profile_id"
    t.index ["user_id"], name: "index_viewers_on_user_id"
  end

end
