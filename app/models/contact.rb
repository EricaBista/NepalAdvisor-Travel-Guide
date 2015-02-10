class Contact < ActiveRecord::Base
	 def create_slug
	    self.Slug = self.Title.parameterize
	  end
	  before_save :create_slug
end
