class AddGentleToEventAndStaff < ActiveRecord::Migration
  def change
    add_column :events, :gender, :string
    add_column :staffs, :gender, :string

  end
end
