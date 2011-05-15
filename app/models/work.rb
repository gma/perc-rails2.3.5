# == Schema Information
# Schema version: 20110409193306
#
# Table name: works
#
#  id            :integer         not null, primary key
#  composer_id   :integer
#  work_name     :string(255)
#  work_order_id :integer
#  arr_orch      :string(255)
#  showarrorch   :boolean
#  opus_no       :string(255)
#  notes         :string(255)
#  source        :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Work < ActiveRecord::Base
  validates_presence_of :composer_id, :work_name
  
  belongs_to :composer
  has_many :instrument_works
  has_many :instruments, :through => :instrument_works
  has_many :workdetails
end
