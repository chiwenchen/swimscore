class CreateTeam < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :leader
    end
  end
end
