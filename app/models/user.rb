class User < ActiveRecord::Base
# 	before_save :encrypt_password
# 	before_create { generate_token(:token) }
 	  validates_uniqueness_of :email
 	  validates_confirmation_of :password
    has_many :reviews
    mount_uploader :picture, ImageUploader
	  has_many :likes
# 	def generate_token(column)
# 		begin 
# 			self[column] = SecureRandom.urlsafe_base64
# 		end while User.exists?(column => self[column])
# 	end
# 	def send_password_reset
#   generate_token(:password_reset_token)
#   self.password_reset_at = Time.zone.now
#   save!
#   UserMailer.password_reset(self).deliver
# end
#     def self.authenticate(email, password)
#      user = find_by_email(email)
#         if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
#          user
#          else
#          nil
#         end
#      end

#      def encrypt_password
#      	if password.present?
#      		self.password_salt = BCrypt::Engine.generate_salt
#      		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
#         end
#       end


# Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :registerable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me
   before_create :set_default_role


    def role?(r)
        role.include? r.to_s
    end

    private
    def set_default_role
      self.role ||= 'normal'
    end

    
end
