class Advertisement < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :position, presence: true
  validates :started_date, presence: true
  validates :ended_date, presence: true
  mount_uploader :image, AddUploader
end
