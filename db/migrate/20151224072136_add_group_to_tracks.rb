class AddGroupToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :group, :integer #組別
  end
end
