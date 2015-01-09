class Item < ActiveRecord::Base
	has_many :descriptions
	has_many :images
	belongs_to :category
end
