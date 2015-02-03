class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :Slug
      t.string :Title
      t.string :Content
      t.integer :Order
      t.boolean :Home_page

      t.timestamps
    end
  end
end
