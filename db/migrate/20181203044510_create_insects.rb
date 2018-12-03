class CreateInsects < ActiveRecord::Migration[5.2]
  def change
    create_table :insects do |t|
      t.string :name
      t.text :description
      t.string :family
      t.string :rarity
      t.string :location
      t.boolean :dangerous

      t.timestamps
    end
  end
end
