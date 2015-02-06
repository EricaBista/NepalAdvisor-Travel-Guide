class AddShortTagToItem < ActiveRecord::Migration
  def change
    add_column :items, :short_tag, :string
  end
end
