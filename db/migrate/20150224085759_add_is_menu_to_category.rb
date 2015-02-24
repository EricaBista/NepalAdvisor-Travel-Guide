class AddIsMenuToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :is_menu, :boolean
  end
end
