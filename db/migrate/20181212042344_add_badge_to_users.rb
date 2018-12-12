class AddBadgeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :badge, :string, :default => 'avatar.jpg'
  end
end
