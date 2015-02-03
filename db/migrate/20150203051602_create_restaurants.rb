class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :Name
      t.string :Title
      t.string :Content

      t.timestamps
    end
  end
end
