class CreateSteelPans < ActiveRecord::Migration
  def self.up
    create_table :steel_pans do |t|
      t.integer :work_id
      t.string :movement_name
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :steel_pans
  end
end
