class Item < ActiveRecord::Base
	validates :Name, presence: true
	validates :Description, presence: true
	has_many :descriptions
	has_many :images
	has_many :reviews
	belongs_to :category

	accepts_nested_attributes_for :images, :allow_destroy => true
	accepts_nested_attributes_for :descriptions, :allow_destroy => true
	accepts_nested_attributes_for :reviews, :allow_destroy => true

	

	scope :item_search, -> (query) { 
	 		joins("LEFT JOIN descriptions ON descriptions.item_id = items.id")
	 		.joins("LEFT JOIN images ON images.item_id = items.id")
	 		.where("Name like ? OR Description like ? OR descriptions.Title like ? OR descriptions.Content like ? OR images.Title like ? OR images.Content like ?", 
	 	"%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%").group('items.id') }

end
