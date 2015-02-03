class Item < ActiveRecord::Base
	validates :Name, presence: true
	validates :Description, presence: true
	has_many :descriptions
	has_many :images
	belongs_to :category
	accepts_nested_attributes_for :images, :descriptions
end
