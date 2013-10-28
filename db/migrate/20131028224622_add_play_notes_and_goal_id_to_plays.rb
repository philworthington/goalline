class AddPlayNotesAndGoalIdToPlays < ActiveRecord::Migration
  def change
    add_column :plays, :play, :string
    add_column :plays, :notes, :text
    add_column :plays, :goal_id, :integer
  end
end
