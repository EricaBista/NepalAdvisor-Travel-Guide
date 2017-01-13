class Item < ActiveRecord::Base
  before_save :create_slug
  belongs_to :category
  has_many :descriptions
  has_many :images
  has_many :reviews
  has_many :likes

  validates :Name, presence: true
  validates :Description, presence: true
  
  accepts_nested_attributes_for :images, :allow_destroy => true
  accepts_nested_attributes_for :descriptions, :allow_destroy => true
  accepts_nested_attributes_for :reviews, :allow_destroy => true

  scope :item_search, -> (query) { 
      joins("LEFT JOIN descriptions ON descriptions.item_id = items.id")
      .joins("LEFT JOIN images ON images.item_id = items.id")
      .where("\"Name\" like ? OR \"Description\" like ? OR descriptions.\"Title\" like ? OR descriptions.\"Content\" like ? OR images.\"Title\" like ? OR images.\"Content\" like ?", 
    "%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%","%#{query}%")
      .group('items.id') }
      
  def create_slug
    self.slug = self.Name.parameterize
  end
end
