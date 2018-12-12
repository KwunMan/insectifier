class CreateBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :badges do |t|
      t.string :image
      t.string :goal
      t.text :description
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
