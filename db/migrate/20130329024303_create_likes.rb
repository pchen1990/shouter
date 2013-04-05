class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :user
      t.references :shout

      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :shout_id
  end
end
