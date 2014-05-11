class AddRequestedIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :requested_id, :integer
  end
end
