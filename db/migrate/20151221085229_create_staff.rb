class CreateStaff < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :team_id
    end
  end
end
