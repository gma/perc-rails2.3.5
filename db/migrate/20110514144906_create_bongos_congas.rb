class CreateBongosCongas < ActiveRecord::Migration
  def self.up
    create_table :bongos_congas do |t|
      t.integer :work_id
      t.string :movement_name
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :bongos_congas
  end
end
