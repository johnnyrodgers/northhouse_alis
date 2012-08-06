class AddColourToModes < ActiveRecord::Migration
  def self.up
  	add_column "modes", "colour", :string, :default => "green"
  end

  def self.down
  	remove_column "modes", "colour"
  end
end
