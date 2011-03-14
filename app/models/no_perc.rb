class NoPerc < ActiveRecord::Base
  paginate_alphabetically :by => :composer_name  
end
