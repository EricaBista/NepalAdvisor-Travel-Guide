# require 'carrierwave/orm/activerecord'
class Image < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :item

	
end
