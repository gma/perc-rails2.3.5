class CreateWorkRequests < ActiveRecord::Migration
  def self.up
    create_table :work_requests do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :job_title
      t.string :composer_name
      t.string :work_name
      t.string :date

      t.timestamps
    end
  end

  def self.down
    drop_table :work_requests
  end
end
