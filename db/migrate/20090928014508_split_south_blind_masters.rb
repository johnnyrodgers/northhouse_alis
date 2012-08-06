class SplitSouthBlindMasters < ActiveRecord::Migration
  def self.up
  	rename_column "modes", "K3_blind_S", "K3_blind_SW"
  	add_column "modes", "K3_blind_SE", :int, :default => 0
  	rename_column "modes", "K3_1_blind_S1", "K3_1_blind_SW1"
  	rename_column "modes", "K3_1_blind_S2", "K3_1_blind_SW2"
  	rename_column "modes", "K3_1_blind_S3", "K3_1_blind_SW3"
  	rename_column "modes", "K3_1_blind_S4", "K3_1_blind_SW4"
  	rename_column "modes", "K3_1_blind_S5", "K3_1_blind_SE1"
  	rename_column "modes", "K3_1_blind_S6", "K3_1_blind_SE2"
  	rename_column "modes", "K3_1_blind_S7", "K3_1_blind_SE3"
  	rename_column "modes", "K3_1_blind_S8", "K3_1_blind_SE4"
  end

  def self.down
  	rename_column "modes", "K3_blind_SW", "K3_blind_S"
  	remove_column "modes", "K3_blind_SE"
  	rename_column "modes", "K3_1_blind_SW1", "K3_1_blind_S1"
  	rename_column "modes", "K3_1_blind_SW2", "K3_1_blind_S2"
  	rename_column "modes", "K3_1_blind_SW3", "K3_1_blind_S3"
  	rename_column "modes", "K3_1_blind_SW4", "K3_1_blind_S4"
  	rename_column "modes", "K3_1_blind_SE1", "K3_1_blind_S5"
  	rename_column "modes", "K3_1_blind_SE2", "K3_1_blind_S6"
  	rename_column "modes", "K3_1_blind_SE3", "K3_1_blind_S7"
  	rename_column "modes", "K3_1_blind_SE4", "K3_1_blind_S8"
  end
end
