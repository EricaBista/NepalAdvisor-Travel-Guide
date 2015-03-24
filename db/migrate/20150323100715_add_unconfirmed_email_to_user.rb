class AddUnconfirmedEmailToUser < ActiveRecord::Migration
  def change
    unless column_exists? :users, :unconfirmed_email
  		add_column :users, :unconfirmed_email, :string
	end
  end
end
