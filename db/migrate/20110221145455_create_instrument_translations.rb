class CreateInstrumentTranslations < ActiveRecord::Migration
  def self.up
    create_table :instrument_translations do |t|
      t.string :instrument_name
      t.string :description
      t.string :french
      t.string :german
      t.string :spanish
      t.string :italian

      t.timestamps
    end
  end

  def self.down
    drop_table :instrument_translations
  end
end
