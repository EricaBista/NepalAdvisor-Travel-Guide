class AddDefaultValueToApproved < ActiveRecord::Migration
  def up
  change_column :reviews, :approved, :boolean, :default => false
end

def down
  change_column :reviews, :approved, :boolean, :default => nil
end
end
