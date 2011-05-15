class InstrumentWork < ActiveRecord::Base
  belongs_to :instrument
  belongs_to :work
end
