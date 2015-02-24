class AddIsDestinationToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :is_destination, :boolean
  end
end
