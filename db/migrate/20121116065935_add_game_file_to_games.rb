class AddGameFileToGames < ActiveRecord::Migration
  def change
    add_attachment :games, :swf_file
    add_attachment :games, :unity3d_file
  end
end
