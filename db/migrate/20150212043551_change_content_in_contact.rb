class ChangeContentInContact < ActiveRecord::Migration
  def change
  	change_column :contacts, :Content, :text
  end
end
