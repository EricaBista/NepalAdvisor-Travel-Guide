class AddBannernameToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :bannername, :string
  end
end
