class User < ActiveRecord::Base
# 	before_save :encrypt_password
# 	before_create { generate_token(:token) }
 	  validates_uniqueness_of :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create },
 	   format:     { :errors => :messages }, uniqueness: { case_sensitive: false }
             
    validates_confirmation_of :password
    has_many :reviews
    mount_uploader :picture, ImageUploader
	  has_many :likes

# Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :registerable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me
   before_create :set_default_role

   ROLES = %w(normal moderator editor administrator)


    def role?(r)
        role.include? r.to_s
    end

    private
    def set_default_role
      self.role ||= 'normal'
    end

    
end
