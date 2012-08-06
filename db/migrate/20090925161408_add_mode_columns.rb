class AddModeColumns < ActiveRecord::Migration
  def self.up
  	add_column "modes", "description", :text, :null => false
  	add_column "modes", "active", :boolean, :default => 0
		add_column "modes", "optimization", :boolean, :default => 0
		add_column "modes", "temperature", :float, :default => 23.0
		add_column "modes", "humidity", :float, :default => 47.5
  	add_column "modes", "ventilation", :string, :default => "OFF"
  	add_column "modes", "K1_light_dining_area", :int, :default => 0
  	add_column "modes", "K1_light_lounge", :int, :default => 0
  	add_column "modes", "K1_light_sleeping_area", :int, :default => 0
  	add_column "modes", "K1_light_kitchen", :int, :default => 0
  	add_column "modes", "K2_light_kitchen_backsplash", :string, :default => "OFF"
  	add_column "modes", "K2_light_entry", :string, :default => "OFF"
  	add_column "modes", "K2_light_exterior_entry", :string, :default => "OFF"
  	add_column "modes", "K1_light_landscape", :string, :default => "OFF"
  	add_column "modes", "K2_light_ambient_canvas", :string, :default => "OFF"
  	add_column "modes", "K1_blind_all", :int, :default => 0
  	add_column "modes", "K3_blind_W", :int, :default => 0
  	add_column "modes", "K3_blind_S", :int, :default => 0
  	add_column "modes", "K3_blind_E", :int, :default => 0
  	add_column "modes", "K3_1_blind_W1", :int, :default => 0
  	add_column "modes", "K3_1_blind_W2", :int, :default => 0
  	add_column "modes", "K3_1_blind_W3", :int, :default => 0
  	add_column "modes", "K3_1_blind_W4", :int, :default => 0
  	add_column "modes", "K3_1_blind_S1", :int, :default => 0
  	add_column "modes", "K3_1_blind_S2", :int, :default => 0
  	add_column "modes", "K3_1_blind_S3", :int, :default => 0
  	add_column "modes", "K3_1_blind_S4", :int, :default => 0
  	add_column "modes", "K3_1_blind_S5", :int, :default => 0
  	add_column "modes", "K3_1_blind_S6", :int, :default => 0
  	add_column "modes", "K3_1_blind_S7", :int, :default => 0
  	add_column "modes", "K3_1_blind_S8", :int, :default => 0
  	add_column "modes", "K3_1_blind_E1", :int, :default => 0
  	add_column "modes", "K3_1_blind_E2", :int, :default => 0
  	add_column "modes", "K3_1_blind_E3", :int, :default => 0
  	add_column "modes", "K1_shade_all", :int, :default => 0
  	add_column "modes", "K3_shade_W", :int, :default => 0
  	add_column "modes", "K3_shade_SW", :int, :default => 0
  	add_column "modes", "K3_shade_SE", :int, :default => 0
  	add_column "modes", "K3_shade_E", :int, :default => 0
  	add_column "modes", "K3_1_shade_W1", :int, :default => 0
  	add_column "modes", "K3_1_shade_W2", :int, :default => 0
  	add_column "modes", "K3_1_shade_W3", :int, :default => 0
  	add_column "modes", "K3_1_shade_W4", :int, :default => 0
  	add_column "modes", "K3_1_shade_SW1", :int, :default => 0
  	add_column "modes", "K3_1_shade_SW2", :int, :default => 0
  	add_column "modes", "K3_1_shade_SW3", :int, :default => 0
  	add_column "modes", "K3_1_shade_SW4", :int, :default => 0
  	add_column "modes", "K3_1_shade_SE1", :int, :default => 0
  	add_column "modes", "K3_1_shade_SE2", :int, :default => 0
  	add_column "modes", "K3_1_shade_SE3", :int, :default => 0
  	add_column "modes", "K3_1_shade_SE4", :int, :default => 0
  	add_column "modes", "K3_1_shade_E1", :int, :default => 0
  	add_column "modes", "K3_1_shade_E2", :int, :default => 0
  	add_column "modes", "K3_1_shade_E3", :int, :default => 0
  	add_column "modes", "K1_shade_all_tilt_upper", :int, :default => 90
  	add_column "modes", "K1_shade_all_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_shade_W_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_shade_W_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_shade_SW_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_shade_SW_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_shade_SE_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_shade_SE_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_shade_E_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_shade_E_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_W1_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_W1_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_W2_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_W2_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_W3_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_W3_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_W4_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_W4_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_SW1_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_SW1_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_SW2_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_SW2_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_SW3_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_SW3_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_SW4_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_SW4_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_SE1_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_SE1_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_SE2_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_SE2_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_SE3_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_SE3_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_SE4_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_SE4_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_E1_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_E1_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_E2_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_E2_tilt_lower", :int, :default => 90
  	add_column "modes", "K3_1_shade_E3_tilt_upper", :int, :default => 90
  	add_column "modes", "K3_1_shade_E3_tilt_lower", :int, :default => 90
  end

  def self.down
  	remove_column "modes", "description"
  	remove_column "modes", "active"
		remove_column "modes", "optimization"
		remove_column "modes", "temperature"
		remove_column "modes", "humidity"
  	remove_column "modes", "ventilation"
  	remove_column "modes", "K1_light_dining_area"
  	remove_column "modes", "K1_light_lounge"
  	remove_column "modes", "K1_light_sleeping_area"
  	remove_column "modes", "K1_light_kitchen"
  	remove_column "modes", "K2_light_kitchen_backsplash"
  	remove_column "modes", "K2_light_entry"
  	remove_column "modes", "K2_light_exterior_entry"
  	remove_column "modes", "K1_light_landscape"
  	remove_column "modes", "K2_light_ambient_canvas"
  	remove_column "modes", "K1_blind_all"
  	remove_column "modes", "K3_blind_W"
  	remove_column "modes", "K3_blind_S"
  	remove_column "modes", "K3_blind_E"
  	remove_column "modes", "K3_1_blind_W1"
  	remove_column "modes", "K3_1_blind_W2"
  	remove_column "modes", "K3_1_blind_W3"
  	remove_column "modes", "K3_1_blind_W4"
  	remove_column "modes", "K3_1_blind_S1"
  	remove_column "modes", "K3_1_blind_S2"
  	remove_column "modes", "K3_1_blind_S3"
  	remove_column "modes", "K3_1_blind_S4"
  	remove_column "modes", "K3_1_blind_S5"
  	remove_column "modes", "K3_1_blind_S6"
  	remove_column "modes", "K3_1_blind_S7"
  	remove_column "modes", "K3_1_blind_S8"
  	remove_column "modes", "K3_1_blind_E1"
  	remove_column "modes", "K3_1_blind_E2"
  	remove_column "modes", "K3_1_blind_E3"
  	remove_column "modes", "K1_shade_all"
  	remove_column "modes", "K3_shade_W"
  	remove_column "modes", "K3_shade_SW"
  	remove_column "modes", "K3_shade_SE"
  	remove_column "modes", "K3_shade_E"
  	remove_column "modes", "K3_1_shade_W1"
  	remove_column "modes", "K3_1_shade_W2"
  	remove_column "modes", "K3_1_shade_W3"
  	remove_column "modes", "K3_1_shade_W4"
  	remove_column "modes", "K3_1_shade_SW1"
  	remove_column "modes", "K3_1_shade_SW2"
  	remove_column "modes", "K3_1_shade_SW3"
  	remove_column "modes", "K3_1_shade_SW4"
  	remove_column "modes", "K3_1_shade_SE1"
  	remove_column "modes", "K3_1_shade_SE2"
  	remove_column "modes", "K3_1_shade_SE3"
  	remove_column "modes", "K3_1_shade_SE4"
  	remove_column "modes", "K3_1_shade_E1"
  	remove_column "modes", "K3_1_shade_E2"
  	remove_column "modes", "K3_1_shade_E3"
  	remove_column "modes", "K1_shade_all_tilt_upper"
  	remove_column "modes", "K1_shade_all_tilt_lower"
  	remove_column "modes", "K3_shade_W_tilt_upper"
  	remove_column "modes", "K3_shade_W_tilt_lower"
  	remove_column "modes", "K3_shade_SW_tilt_upper"
  	remove_column "modes", "K3_shade_SW_tilt_lower"
  	remove_column "modes", "K3_shade_SE_tilt_upper"
  	remove_column "modes", "K3_shade_SE_tilt_lower"
  	remove_column "modes", "K3_shade_E_tilt_upper"
  	remove_column "modes", "K3_shade_E_tilt_lower"
  	remove_column "modes", "K3_1_shade_W1_tilt_upper"
  	remove_column "modes", "K3_1_shade_W1_tilt_lower"
  	remove_column "modes", "K3_1_shade_W2_tilt_upper"
  	remove_column "modes", "K3_1_shade_W2_tilt_lower"
  	remove_column "modes", "K3_1_shade_W3_tilt_upper"
  	remove_column "modes", "K3_1_shade_W3_tilt_lower"
  	remove_column "modes", "K3_1_shade_W4_tilt_upper"
  	remove_column "modes", "K3_1_shade_W4_tilt_lower"
  	remove_column "modes", "K3_1_shade_SW1_tilt_upper"
  	remove_column "modes", "K3_1_shade_SW1_tilt_lower"
  	remove_column "modes", "K3_1_shade_SW2_tilt_upper"
  	remove_column "modes", "K3_1_shade_SW2_tilt_lower"
  	remove_column "modes", "K3_1_shade_SW3_tilt_upper"
  	remove_column "modes", "K3_1_shade_SW3_tilt_lower"
  	remove_column "modes", "K3_1_shade_SW4_tilt_upper"
  	remove_column "modes", "K3_1_shade_SW4_tilt_lower"
  	remove_column "modes", "K3_1_shade_SE1_tilt_upper"
  	remove_column "modes", "K3_1_shade_SE1_tilt_lower"
  	remove_column "modes", "K3_1_shade_SE2_tilt_upper"
  	remove_column "modes", "K3_1_shade_SE2_tilt_lower"
  	remove_column "modes", "K3_1_shade_SE3_tilt_upper"
  	remove_column "modes", "K3_1_shade_SE3_tilt_lower"
  	remove_column "modes", "K3_1_shade_SE4_tilt_upper"
  	remove_column "modes", "K3_1_shade_SE4_tilt_lower"
  	remove_column "modes", "K3_1_shade_E1_tilt_upper"
  	remove_column "modes", "K3_1_shade_E1_tilt_lower"
  	remove_column "modes", "K3_1_shade_E2_tilt_upper"
  	remove_column "modes", "K3_1_shade_E2_tilt_lower"
  	remove_column "modes", "K3_1_shade_E3_tilt_upper"
  	remove_column "modes", "K3_1_shade_E3_tilt_lower"
  end
end
