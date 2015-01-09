class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :Title
      t.text :Content
      t.integer :Order
      t.string :image
      t.integer :item_id

      t.timestamps
    end
  end
end
