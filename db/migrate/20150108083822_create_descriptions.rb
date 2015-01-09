class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :Title
      t.text :Content
      t.integer :Order
      t.integer :item_id

      t.timestamps
    end
  end
end
