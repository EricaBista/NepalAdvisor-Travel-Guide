class Contact < ActiveRecord::Base
  before_save :create_slug
  validates :Title, presence: true
  validates :Slug, uniqueness: true
  validates :Content, presence: true
  
  def create_slug
    self.Slug = self.Title.parameterize
  end   
end
