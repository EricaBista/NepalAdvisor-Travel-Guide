class AddApprovedToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :approved, :boolean
  end
end
