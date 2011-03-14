class CreateWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.integer :composer_id
      t.string :work_name
      t.integer :work_order_id
      t.string :arr_orch
      t.boolean :showarrorch
      t.string :opus_no
      t.string :notes
      t.string :source

      t.timestamps
    end
  end

  def self.down
    drop_table :works
  end
end
