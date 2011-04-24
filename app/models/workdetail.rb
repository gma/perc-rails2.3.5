# == Schema Information
# Schema version: 20110409193306
#
# Table name: workdetails
#
#  id                :integer         not null, primary key
#  work_id           :integer
#  movement_id       :integer
#  movement_name     :string(255)
#  timpani           :string(255)
#  timpani_2         :string(255)
#  timpani_3         :string(255)
#  timpani_4         :string(255)
#  timpani_5         :string(255)
#  timpani_6         :string(255)
#  timpani_7         :string(255)
#  timpani_8         :string(255)
#  timpani_9         :string(255)
#  timpani_10        :string(255)
#  percussion_1      :string(255)
#  percussion_2      :string(255)
#  percussion_3      :string(255)
#  percussion_4      :string(255)
#  percussion_5      :string(255)
#  percussion_6      :string(255)
#  percussion_7      :string(255)
#  percussion_8      :string(255)
#  percussion_9      :string(255)
#  percussion_10     :string(255)
#  percussion_11     :string(255)
#  percussion_12     :string(255)
#  percussion_13     :string(255)
#  percussion_14     :string(255)
#  percussion_15     :string(255)
#  percussion_16     :string(255)
#  percussion_17     :string(255)
#  percussion_18     :string(255)
#  percussion_19     :string(255)
#  percussion_20     :string(255)
#  cimbalom          :string(255)
#  attachment_exists :boolean
#  created_at        :datetime
#  updated_at        :datetime
#

class Workdetail < ActiveRecord::Base
  validates_presence_of :work_id, :movement_id
  
  belongs_to :work
end
