class Composer < ActiveRecord::Base
  has_many :works
  has_many :workdetails, :through => :works
  paginate_alphabetically :by => :composer_name
end
