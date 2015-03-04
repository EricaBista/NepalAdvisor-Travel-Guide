class Advertisement < ActiveRecord::Base
	
	mount_uploader :image, AddUploader
end
