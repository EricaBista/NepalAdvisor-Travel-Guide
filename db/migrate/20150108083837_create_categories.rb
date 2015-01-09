class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :Name
      t.text :Description
      t.integer :Order

      t.timestamps
    end
  end
end
