class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :Name
      t.text :Description
      t.integer :Order
      t.integer :category_id

      t.timestamps
    end
  end
end
