class Category < ActiveRecord::Base
  validates :Name, presence: true
  validates :Description, presence: true
  validates :slug, uniqueness: true
  has_many :items, :dependent => :destroy
  mount_uploader :icon, IconUploader
  mount_uploader :banner, AddUploader
  before_save :create_slug
  
  scope :category_search, -> (query) { where("\"Name\" like ? OR \"Description\" like ? ","%#{query}%","%#{query}%") }
  
  def create_slug
      self.slug = self.Name.parameterize
  end 
end
