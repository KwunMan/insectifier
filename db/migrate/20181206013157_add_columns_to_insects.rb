class AddColumnsToInsects < ActiveRecord::Migration[5.2]
  def change
    add_column :insects, :kingdom, :string
    add_column :insects, :order, :string
    add_column :insects, :class, :string
    add_column :insects, :scientific_name, :string
  end
end
