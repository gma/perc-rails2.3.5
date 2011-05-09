class AddVariousToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :last_name, :string
    add_column :users, :organisation_name, :string
    add_column :users, :job_title, :string
    add_column :users, :address, :text
    add_column :users, :zip, :string
    add_column :users, :country, :string
    add_column :users, :phone_no, :string
    add_column :users, :membership_type, :string
    add_column :users, :currency, :string
    add_column :users, :language, :string
    add_column :users, :trial_member, :boolean
    add_column :users, :payment_type, :string
    add_column :users, :trial_used, :boolean
    add_column :users, :years_paid, :string
    add_column :users, :cancelled, :boolean
  end

  def self.down
    remove_column :users, :cancelled
    remove_column :users, :years_paid
    remove_column :users, :trial_used
    remove_column :users, :payment_type
    remove_column :users, :trial_member
    remove_column :users, :language
    remove_column :users, :currency
    remove_column :users, :membership_type
    remove_column :users, :country
    remove_column :users, :phone_no, :string
    remove_column :users, :zip
    remove_column :users, :address
    remove_column :users, :job_title
    remove_column :users, :organisation_name
    remove_column :users, :last_name
  end
end
