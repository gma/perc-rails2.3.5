class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :organisation_name
      t.string :web_address
      t.string :street_address_1
      t.string :street_address_2
      t.string :town_or_city
      t.string :zip
      t.string :state_or_county
      t.string :country
      t.string :phone_no
      t.string :email
      t.string :password
      t.datetime :join_date
      t.string :membership_type
      t.string :payment_type
      t.string :currency
      t.boolean :cancelled
      t.boolean :current_member
      t.string :language
      t.string :years_paid

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
