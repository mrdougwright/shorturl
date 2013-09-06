class AddIndexToUrl < ActiveRecord::Migration
  def self.up
    add_index :urls, :shorturl
  end

  def self.down
    remove_index :urls, :shorturl
  end
end
