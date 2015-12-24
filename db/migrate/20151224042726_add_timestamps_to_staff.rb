class AddTimestampsToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :created_at, :datetime
    add_column :staffs, :updated_at, :datetime
  end
end
