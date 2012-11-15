class AddScreenshotsToGames < ActiveRecord::Migration
  def change
    add_attachment :games, :screenshot_1
    add_attachment :games, :screenshot_2
    add_attachment :games, :screenshot_3
    add_attachment :games, :screenshot_4
    add_attachment :games, :screenshot_5
  end
end
