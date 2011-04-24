# == Schema Information
# Schema version: 20110409193306
#
# Table name: composers
#
#  id            :integer         not null, primary key
#  composer_name :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Composer < ActiveRecord::Base
  validates_presence_of :composer_name
  
  has_many :works
  has_many :workdetails, :through => :works
  paginate_alphabetically :by => :composer_name
end
