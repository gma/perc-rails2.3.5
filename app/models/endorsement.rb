# == Schema Information
# Schema version: 20110409193306
#
# Table name: endorsements
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  company    :string(255)
#  job_title  :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Endorsement < ActiveRecord::Base
  attr_accessible :name, :email, :company, :job_title, :body
  
  validates_presence_of :name, :email, :job_title, :body
  validates_format_of :email, :with => /^(\S+)@(\S+)\.(\S+)$/
end
