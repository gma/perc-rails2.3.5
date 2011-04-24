# == Schema Information
# Schema version: 20110409193306
#
# Table name: no_percs
#
#  id            :integer         not null, primary key
#  composer_name :string(255)
#  work_name     :string(255)
#  work_count    :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class NoPerc < ActiveRecord::Base
  validates_presence_of :composer_name, :work_name
  
  paginate_alphabetically :by => :composer_name  
end
