class Endorsement < ActiveRecord::Base
  validates_presence_of :name, :email, :job_title, :body
  validates_format_of :email, :with => /^(\S+)@(\S+)\.(\S+)$/
end
