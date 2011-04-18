class WorkRequest < ActiveRecord::Base
  validates_presence_of :name, :job_title, :composer_name, :work_name, :date
  validates_format_of :email, :with => /^(\S+)@(\S+)\.(\S+)$/
end
