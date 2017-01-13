class User < ActiveRecord::Base
  before_create :set_default_role

  mount_uploader :picture, ImageUploader

  validates_uniqueness_of :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, format: { :errors => :messages }, uniqueness: { case_sensitive: false }
  validates_confirmation_of :password
    
  has_many :reviews
  has_many :likes

  ROLES = %w(normal moderator editor administrator)

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def role?(r)
    role.include? r.to_s
  end

  private

  def set_default_role
    self.role ||= 'normal'
  end
end
