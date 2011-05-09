class RemovePhoneNoFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :phone_no
  end

  def self.down
    add_column :users, :phone_no, :string
  end
end
