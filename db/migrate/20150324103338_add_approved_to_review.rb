class AddApprovedToReview < ActiveRecord::Migration
  def change
  	unless column_exists? :reviews, :approved
    add_column :reviews, :approved, :boolean, :default => false
end
  end
end
