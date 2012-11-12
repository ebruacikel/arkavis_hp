class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :position
      t.text :description
      t.text :benefits
      t.text :requirements

      t.timestamps
    end
  end
end
