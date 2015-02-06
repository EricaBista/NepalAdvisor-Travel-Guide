class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.references :user, index: true
      t.integer :parent_id
      t.references :item, index: true

      t.timestamps
    end
  end
end
