class CreateNoPercs < ActiveRecord::Migration
  def self.up
    create_table :no_percs do |t|
      t.string :composer_name
      t.string :work_name
      t.integer :work_count

      t.timestamps
    end
  end

  def self.down
    drop_table :no_percs
  end
end
