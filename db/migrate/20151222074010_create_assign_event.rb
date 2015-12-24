class CreateAssignEvent < ActiveRecord::Migration
  def change
    create_table :assign_events do |t|
      t.integer :staff_id
      t.integer :event_id
      t.timestamps
    end
  end
end
