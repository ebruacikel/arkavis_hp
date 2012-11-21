class AddCoverscreenToGames < ActiveRecord::Migration
  def change
    add_attachment :games, :cover_screen
    add_column :games, :weight, :integer
  end
end
