class AddFromIdToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :from_id, :integer
  end
end
