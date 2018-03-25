class CreateShows < ActiveRecord::Migration

  def change
    create_table :shows do |t|
      t.string :name
      t.string :network
      t.string :day
      t.integer :rating
    end
  end

end
# The table should have name, network, day, and rating columns. name, network,
# and day have a datatype of string, and rating has a datatype of integer.
# Create an app folder with a models folder within it, and then create a file, show.rb,
# in app/models. In this file, you will define a Show class that inherits from ActiveRecord::Base.
