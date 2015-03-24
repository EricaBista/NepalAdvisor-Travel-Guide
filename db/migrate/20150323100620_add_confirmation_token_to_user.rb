class AddConfirmationTokenToUser < ActiveRecord::Migration
  def change
    unless column_exists? :users, :confirmation_token
  		add_column :users, :confirmation_token, :string
	end
  end
end
