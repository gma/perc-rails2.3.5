class AddActiveMemberToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :active_member, :boolean
  end

  def self.down
    remove_column :users, :active_member
  end
end
