class InstrumentTranslation < ActiveRecord::Base
  paginate_alphabetically :by => :instrument_name
end
