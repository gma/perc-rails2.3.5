class CreateChineseGongs < ActiveRecord::Migration
  def self.up
    create_table :chinese_gongs do |t|
      t.integer :work_id
      t.string :movement_name
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :chinese_gongs
  end
end
