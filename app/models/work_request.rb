# == Schema Information
# Schema version: 20110409193306
#
# Table name: work_requests
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  email         :string(255)
#  company       :string(255)
#  job_title     :string(255)
#  composer_name :string(255)
#  work_name     :string(255)
#  date          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class WorkRequest < ActiveRecord::Base
  attr_accessible :name, :email, :company, :job_title, :composer_name, :work_name, :date
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates_presence_of :name, :job_title, :composer_name, :work_name, :date
  validates_format_of :email, :with => email_regex
end
