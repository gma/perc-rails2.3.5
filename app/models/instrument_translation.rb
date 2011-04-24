# == Schema Information
# Schema version: 20110409193306
#
# Table name: instrument_translations
#
#  id              :integer         not null, primary key
#  instrument_name :string(255)
#  description     :string(255)
#  french          :string(255)
#  german          :string(255)
#  spanish         :string(255)
#  italian         :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class InstrumentTranslation < ActiveRecord::Base
  validates_presence_of :instrument_name, :description
  
  paginate_alphabetically :by => :instrument_name
end
