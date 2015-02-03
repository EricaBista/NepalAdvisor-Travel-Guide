class Item < ActiveRecord::Base
	validates :Name, presence: true
	validates :Description, presence: true
	has_many :descriptions
	has_many :images
	belongs_to :category
<<<<<<< HEAD
	accepts_nested_attributes_for :images, :descriptions
=======

	accepts_nested_attributes_for :images
	accepts_nested_attributes_for :descriptions
>>>>>>> 8dba7ad32162a1f4e38997dafca44ddd66690967
end
