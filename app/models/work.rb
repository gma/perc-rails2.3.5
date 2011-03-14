class Work < ActiveRecord::Base
  belongs_to :composer
  has_many :workdetails
end
