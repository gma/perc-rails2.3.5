class CreateTaxiHorns < ActiveRecord::Migration
  def self.up
    create_table :taxi_horns do |t|
      t.integer :work_id
      t.string :movement_name
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :taxi_horns
  end
end
