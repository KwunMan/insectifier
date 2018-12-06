class ChangeClassColumnInsects < ActiveRecord::Migration[5.2]
  def change
    rename_column :insects, :class, :class_insect
  end
end
