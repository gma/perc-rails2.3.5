class CreateInstrumentWorks < ActiveRecord::Migration
  def self.up
    create_table :instrument_works do |t|
      t.integer :instrument_id
      t.integer :work_id

      t.timestamps
    end
  end

  def self.down
    drop_table :instrument_works
  end
end
