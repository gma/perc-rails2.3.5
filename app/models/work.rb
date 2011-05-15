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
  has_many :workdetails
           :anvils
           :bell_plates
           :bells
           :bongos
           :bongos_congas
           :boobams
           :burmese_gongs
           :chinese_gongs
           :cowbells
           :crotales
           :factory_whistles
           :flower_pots
           :handbells
           :japanese_temple_bells
           :log_drums
           :marimbas
           :metalophones
           :rototoms
           :sleighbells
           :songbells
           :steel_pans
           :tamburis
           :taxi_horns
           :temple_blocks
           :thai_gongs
           :tuned_gongs
           :tuned_woodblocks
           :xylorimbas
  
end
