# == Schema Information
# Schema version: 20110503234641
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  first_name         :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#  admin              :boolean
#  last_name          :string(255)
#  organisation_name  :string(255)
#  job_title          :string(255)
#  address            :text
#  zip                :string(255)
#  country            :string(255)
#  phone_no           :string(255)
#  membership_type    :string(255)
#  currency           :string(255)
#  language           :string(255)
#  trial_member       :boolean
#  payment_type       :string(255)
#  trial_used         :boolean
#  years_paid         :string(255)
#  cancelled          :boolean
#  active_member      :boolean
#

require 'digest'
class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :first_name, :last_name, :organisation_name, :job_title, :address, :zip, :country, :phone_number, :email, :password, :password_confirmation, :active_member, :admin
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :first_name,   :presence => true,
                           :length   => { :maximum => 50 }
  validates :last_name,    :presence => true,
                           :length   => { :maximum => 50 }                       
  validates :address,      :presence => true                       
  validates :zip,          :presence => true 
  validates :country,      :presence => true  
  validates :phone_number, :presence => true                                             
  validates :email,        :presence => true,
                           :format   => { :with => email_regex },
                           :uniqueness => { :case_sensitive => false }
                           # Automatically create the virtual attribute 'password_confirmation'.
  validates :password,     :presence     => true,
                           :confirmation => true,
                           :length       => { :within => 6..40 }
                       
  before_save :encrypt_password
  
  # Return true if the user's password matches the submitted password.
  def has_password?(submitted_password)
    # Compare encrypted_password with the encrypted version of
    # submitted_password.
    encrypted_password == encrypt(submitted_password)
  end  
  
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end 
  
  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end   
  
  private
  
    def encrypt_password
      self.salt = make_salt if new_record?
      self.encrypted_password = encrypt(password)
    end
    
    def encrypt(string)
      secure_hash("#{salt}--#{string}")
    end
    
    def make_salt
      secure_hash("#{Time.now.utc}--#{password}")
    end
    
    def secure_hash(string)
      Digest::SHA2.hexdigest(string)
    end                                                   
end

