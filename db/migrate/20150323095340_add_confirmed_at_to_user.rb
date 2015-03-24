class AddConfirmedAtToUser < ActiveRecord::Migration
  def change
     unless column_exists? :users, :confirmed_at
  		add_column :users, :confirmed_at, :string
	end
  end
end
