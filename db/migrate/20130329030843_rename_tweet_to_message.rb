class RenameTweetToMessage < ActiveRecord::Migration
  def change
  	rename_column :shouts, :tweet, :message
  end

  # def down
  # end
end
