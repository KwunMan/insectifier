class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.integer :score
      t.string :poster
      t.string :description
      t.references :insect, foreign_key: true

      t.timestamps
    end
  end
end
