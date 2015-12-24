class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :event_id
      t.integer :staff_id
      t.integer :number
      t.time :time
      t.timestamps 
    end
  end
end
