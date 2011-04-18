class CreateEndorsements < ActiveRecord::Migration
  def self.up
    create_table :endorsements do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :job_title
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :endorsements
  end
end
