class CreateThaiGongs < ActiveRecord::Migration
  def self.up
    create_table :thai_gongs do |t|
      t.integer :work_id
      t.string :movement_name
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :thai_gongs
  end
end
