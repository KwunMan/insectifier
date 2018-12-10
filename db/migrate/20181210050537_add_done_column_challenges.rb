class AddDoneColumnChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :done, :boolean

  end
end
