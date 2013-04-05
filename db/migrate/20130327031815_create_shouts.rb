class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :tweet

      t.timestamps
    end
  end
end
