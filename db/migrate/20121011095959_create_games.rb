class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :slogan
      t.text :about
      t.text :features

      t.timestamps
    end
  end
end
