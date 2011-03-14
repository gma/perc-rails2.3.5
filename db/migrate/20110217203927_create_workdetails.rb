class CreateWorkdetails < ActiveRecord::Migration
  def self.up
    create_table :workdetails do |t|
      t.integer :work_id
      t.integer :movement_id
      t.string :movement_name
      t.string :timpani
      t.string :timpani_2
      t.string :timpani_3
      t.string :timpani_4
      t.string :timpani_5
      t.string :timpani_6
      t.string :timpani_7
      t.string :timpani_8
      t.string :timpani_9
      t.string :timpani_10
      t.string :percussion_1
      t.string :percussion_2
      t.string :percussion_3
      t.string :percussion_4
      t.string :percussion_5
      t.string :percussion_6
      t.string :percussion_7
      t.string :percussion_8
      t.string :percussion_9
      t.string :percussion_10
      t.string :percussion_11
      t.string :percussion_12
      t.string :percussion_13
      t.string :percussion_14
      t.string :percussion_15
      t.string :percussion_16
      t.string :percussion_17
      t.string :percussion_18
      t.string :percussion_19
      t.string :percussion_20
      t.string :cimbalom
      t.boolean :attachment_exists

      t.timestamps
    end
  end

  def self.down
    drop_table :workdetails
  end
end
