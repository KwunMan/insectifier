class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.references :insect, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
