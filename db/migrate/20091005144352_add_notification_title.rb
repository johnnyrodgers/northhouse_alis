class AddNotificationTitle < ActiveRecord::Migration
  def self.up
  	add_column "notifications", "title", :text
  end

  def self.down
  	remove_column "notifications", "title"
  end
end
