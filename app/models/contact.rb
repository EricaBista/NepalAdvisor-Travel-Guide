class Contact < ActiveRecord::Base
	validates :Title, presence: true
	validates :Slug, uniqueness: true
	validates :Content, presence: true
	 def create_slug
	    self.Slug = self.Title.parameterize
	  end
	  before_save :create_slug
end
