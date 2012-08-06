# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091005144352) do

  create_table "beckhoffs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modes", :force => true do |t|
    t.string   "name",                        :default => ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.boolean  "active",                      :default => false
    t.boolean  "optimization",                :default => false
    t.float    "temperature",                 :default => 23.0
    t.float    "humidity",                    :default => 47.5
    t.string   "ventilation",                 :default => "OFF"
    t.integer  "K1_light_dining_area",        :default => 0
    t.integer  "K1_light_lounge",             :default => 0
    t.integer  "K1_light_sleeping_area",      :default => 0
    t.integer  "K1_light_kitchen",            :default => 0
    t.string   "K2_light_kitchen_backsplash", :default => "OFF"
    t.string   "K2_light_entry",              :default => "OFF"
    t.string   "K2_light_exterior_entry",     :default => "OFF"
    t.string   "K1_light_landscape",          :default => "OFF"
    t.string   "K2_light_ambient_canvas",     :default => "OFF"
    t.integer  "K1_blind_all",                :default => 0
    t.integer  "K3_blind_W",                  :default => 0
    t.integer  "K3_blind_SW",                 :default => 0
    t.integer  "K3_blind_E",                  :default => 0
    t.integer  "K3_1_blind_W1",               :default => 0
    t.integer  "K3_1_blind_W2",               :default => 0
    t.integer  "K3_1_blind_W3",               :default => 0
    t.integer  "K3_1_blind_W4",               :default => 0
    t.integer  "K3_1_blind_SW1",              :default => 0
    t.integer  "K3_1_blind_SW2",              :default => 0
    t.integer  "K3_1_blind_SW3",              :default => 0
    t.integer  "K3_1_blind_SW4",              :default => 0
    t.integer  "K3_1_blind_SE1",              :default => 0
    t.integer  "K3_1_blind_SE2",              :default => 0
    t.integer  "K3_1_blind_SE3",              :default => 0
    t.integer  "K3_1_blind_SE4",              :default => 0
    t.integer  "K3_1_blind_E1",               :default => 0
    t.integer  "K3_1_blind_E2",               :default => 0
    t.integer  "K3_1_blind_E3",               :default => 0
    t.integer  "K1_shade_all",                :default => 0
    t.integer  "K3_shade_W",                  :default => 0
    t.integer  "K3_shade_SW",                 :default => 0
    t.integer  "K3_shade_SE",                 :default => 0
    t.integer  "K3_shade_E",                  :default => 0
    t.integer  "K3_1_shade_W1",               :default => 0
    t.integer  "K3_1_shade_W2",               :default => 0
    t.integer  "K3_1_shade_W3",               :default => 0
    t.integer  "K3_1_shade_W4",               :default => 0
    t.integer  "K3_1_shade_SW1",              :default => 0
    t.integer  "K3_1_shade_SW2",              :default => 0
    t.integer  "K3_1_shade_SW3",              :default => 0
    t.integer  "K3_1_shade_SW4",              :default => 0
    t.integer  "K3_1_shade_SE1",              :default => 0
    t.integer  "K3_1_shade_SE2",              :default => 0
    t.integer  "K3_1_shade_SE3",              :default => 0
    t.integer  "K3_1_shade_SE4",              :default => 0
    t.integer  "K3_1_shade_E1",               :default => 0
    t.integer  "K3_1_shade_E2",               :default => 0
    t.integer  "K3_1_shade_E3",               :default => 0
    t.integer  "K1_shade_all_tilt_upper",     :default => 90
    t.integer  "K1_shade_all_tilt_lower",     :default => 90
    t.integer  "K3_shade_W_tilt_upper",       :default => 90
    t.integer  "K3_shade_W_tilt_lower",       :default => 90
    t.integer  "K3_shade_SW_tilt_upper",      :default => 90
    t.integer  "K3_shade_SW_tilt_lower",      :default => 90
    t.integer  "K3_shade_SE_tilt_upper",      :default => 90
    t.integer  "K3_shade_SE_tilt_lower",      :default => 90
    t.integer  "K3_shade_E_tilt_upper",       :default => 90
    t.integer  "K3_shade_E_tilt_lower",       :default => 90
    t.integer  "K3_1_shade_W1_tilt_upper",    :default => 90
    t.integer  "K3_1_shade_W1_tilt_lower",    :default => 90
    t.integer  "K3_1_shade_W2_tilt_upper",    :default => 90
    t.integer  "K3_1_shade_W2_tilt_lower",    :default => 90
    t.integer  "K3_1_shade_W3_tilt_upper",    :default => 90
    t.integer  "K3_1_shade_W3_tilt_lower",    :default => 90
    t.integer  "K3_1_shade_W4_tilt_upper",    :default => 90
    t.integer  "K3_1_shade_W4_tilt_lower",    :default => 90
    t.integer  "K3_1_shade_SW1_tilt_upper",   :default => 90
    t.integer  "K3_1_shade_SW1_tilt_lower",   :default => 90
    t.integer  "K3_1_shade_SW2_tilt_upper",   :default => 90
    t.integer  "K3_1_shade_SW2_tilt_lower",   :default => 90
    t.integer  "K3_1_shade_SW3_tilt_upper",   :default => 90
    t.integer  "K3_1_shade_SW3_tilt_lower",   :default => 90
    t.integer  "K3_1_shade_SW4_tilt_upper",   :default => 90
    t.integer  "K3_1_shade_SW4_tilt_lower",   :default => 90
    t.integer  "K3_1_shade_SE1_tilt_upper",   :default => 90
    t.integer  "K3_1_shade_SE1_tilt_lower",   :default => 90
    t.integer  "K3_1_shade_SE2_tilt_upper",   :default => 90
    t.integer  "K3_1_shade_SE2_tilt_lower",   :default => 90
    t.integer  "K3_1_shade_SE3_tilt_upper",   :default => 90
    t.integer  "K3_1_shade_SE3_tilt_lower",   :default => 90
    t.integer  "K3_1_shade_SE4_tilt_upper",   :default => 90
    t.integer  "K3_1_shade_SE4_tilt_lower",   :default => 90
    t.integer  "K3_1_shade_E1_tilt_upper",    :default => 90
    t.integer  "K3_1_shade_E1_tilt_lower",    :default => 90
    t.integer  "K3_1_shade_E2_tilt_upper",    :default => 90
    t.integer  "K3_1_shade_E2_tilt_lower",    :default => 90
    t.integer  "K3_1_shade_E3_tilt_upper",    :default => 90
    t.integer  "K3_1_shade_E3_tilt_lower",    :default => 90
    t.string   "colour",                      :default => "green"
    t.integer  "K3_blind_SE",                 :default => 0
  end

  create_table "notifications", :force => true do |t|
    t.text     "message"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "title"
  end

end
