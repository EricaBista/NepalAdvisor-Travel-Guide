class AddConfirmationSentAtToUser < ActiveRecord::Migration
  def change
    unless column_exists? :users, :confirmation_sent_at
  		add_column :users, :confirmation_sent_at, :string
	end
  end
end
