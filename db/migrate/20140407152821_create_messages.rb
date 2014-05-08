class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_id
      t.string :receiver_id
      t.text :body

      t.timestamps
    end
  end
end
