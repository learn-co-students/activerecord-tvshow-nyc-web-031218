class CreateShows < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    create_table :shows do |t|
      t.string :name
      t.integer :rating
      t.string :day
      t.string :network
      t.timestamps
    end
  end
end
