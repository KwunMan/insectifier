class AddDoneToAchievementCollection < ActiveRecord::Migration[5.2]
  def change
    add_column :achievement_collections, :done ,:boolean
  end
end
