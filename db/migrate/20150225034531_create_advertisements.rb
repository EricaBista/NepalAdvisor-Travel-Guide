class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.text :text
      t.string :title
      t.text :description
      t.string :image
      t.date :started_date
      t.date :ended_date
      t.integer :clicked
      t.string :position

      t.timestamps
    end
  end
end
