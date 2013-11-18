class AddCompleteToPlays < ActiveRecord::Migration
  def change
    add_column :plays, :complete, :boolean, default: false, null: false
  end
end
