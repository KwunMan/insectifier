class RemoveColumnsFromBadges < ActiveRecord::Migration[5.2]
  def change
    remove_column :badges, :description, :string
    remove_column :badges, :goal, :string
  end
end
