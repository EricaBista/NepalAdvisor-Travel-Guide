class AddMaxClickedToAdvertisement < ActiveRecord::Migration
  def change
    add_column :advertisements, :max_clicked, :integer
  end
end
