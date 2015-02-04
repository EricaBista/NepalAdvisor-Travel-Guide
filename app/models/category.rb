class Category < ActiveRecord::Base
	validates :Name, presence: true
	validates :Description, presence: true
	has_many :items

	before_create :create_slug

	  # def to_param
	  #   slug
	  # end

	  def create_slug
	    self.slug = self.Name.parameterize
	  end
end
