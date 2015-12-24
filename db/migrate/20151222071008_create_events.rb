class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :age_range
      t.string :length #米數
      t.string :style
      t.integer :competition_id
      t.timestamps
    end
  end
end
