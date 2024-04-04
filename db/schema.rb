ActiveRecord::Schema[7.1].define(version: 2024_04_04_193354) do
  create_table "photographers", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
