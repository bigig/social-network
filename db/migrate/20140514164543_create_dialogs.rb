class CreateDialogs < ActiveRecord::Migration
  def change
    create_table :dialogs do |t|
      t.integer :first_user_id
      t.integer :second_user_id

      t.timestamps
    end
  end
end
