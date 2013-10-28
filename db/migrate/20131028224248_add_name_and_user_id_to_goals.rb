class AddNameAndUserIdToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :name, :string
    add_column :goals, :user_id, :integer
  end
end
