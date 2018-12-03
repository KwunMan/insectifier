class AddPhotoToInsects < ActiveRecord::Migration[5.2]
  def change
    add_column :insects, :photo, :string
  end
end
