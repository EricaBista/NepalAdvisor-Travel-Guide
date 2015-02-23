class Category < ActiveRecord::Base
	validates :Name, presence: true
	validates :Description, presence: true
	validates :slug, uniqueness: true
	has_many :items
	mount_uploader :icon, IconUploader
	before_save :create_slug

	  def create_slug
	    self.slug = self.Name.parameterize
	  end
end
